//
//  ViewController.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import UIKit

class WeatherForcastController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var forecastType: ForcastType?
    
    lazy var viewModel = {return ForecastViewModel(forecastType: forecastType)}()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettingsAtViewLoad()
    }
    
    private func initialSettingsAtViewLoad() {
        setuptableView()
        bindViewModel()
        navigationController?.navigationItem.backBarButtonItem?.tintColor = UIColor.white
        showProgressView(onWindow: true)
        viewModel.sendRequestForweatherReport()
    }
    
    private func bindViewModel() {
        viewModel.bindSuccess { [weak self](success) in
            DispatchQueue.main.async {
                self?.hideProgressView()
                if success {
                    self?.tableView.reloadData()
                }
            }
        }
        
        viewModel.bindFailure { [weak self](error) in
            DispatchQueue.main.async {
                self?.hideProgressView()
                AppUtility.showAlert(withError: error, buttonTitle: Strings.OK)
            }
        }
    }
    
    private func setuptableView() {
        tableView.register(UINib(nibName: ForecastTableCell.ID, bundle: nil), forCellReuseIdentifier: ForecastTableCell.ID)
        tableView.register(WeatherReportHeaderCell.self, forHeaderFooterViewReuseIdentifier: WeatherReportHeaderCell.ID)
        tableView.tableFooterView = UIView()
    }
    
}

extension WeatherForcastController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(inSection: section)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let date = viewModel.headerFor(section: section) else { return nil }
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: WeatherReportHeaderCell.ID) as? WeatherReportHeaderCell
        headerView?.titleLabel?.text = date
        headerView?.backgroundColor = .clear
        headerView?.contentView.backgroundColor = .clear
        headerView?.tintColor = .clear
        return headerView
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ForecastTableCell.ID, for: indexPath) as! ForecastTableCell
        cell.populate(data: self.viewModel.item(atIndexPath: indexPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return viewModel.heightFor(section: section)
    }
}

