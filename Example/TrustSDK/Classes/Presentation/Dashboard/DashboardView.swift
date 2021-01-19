// Copyright Trust Wallet. All rights reserved.
//
// This file is part of TrustSDK. The full TrustSDK copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.


import SwiftUI

struct DashboardView: View {
    
    @ObservedObject
    var viewModel: DashboardViewModel
		    
    var body: some View {
        NavigationView {
			VStack {
				Text("Binance Smart Chain balance")
					.font(.subheadline)
					.foregroundColor(.gray)
				Text(viewModel.balance.localizedAmount)
					.font(.largeTitle)
					.frame(height: 50.0)
								
				List(viewModel.tokenBalanceList) { balance in
					TokenRow(balance: balance)
				}
			}
		}
    }
}