//
//  User+Kind.swift
//  MonkiProjectsModel
//
//  Created by BARDON Rémi on 23/06/2020.
//  Copyright © 2020 Monki Projects. All rights reserved.
//

import Foundation

extension User {
	
	public enum Kind: String, Codable, Hashable, DefaultCaseDecodable {
		
		public static let defaultCase: Self = .user
		
		case user, bot
		
		public var title: String {
			switch self {
			case .user:
				return NSLocalizedString("USER_KIND_USER", bundle: .module, comment: "")
			case .bot:
				return NSLocalizedString("USER_KIND_BOT", bundle: .module, comment: "")
			}
		}
		
	}
	
}

/// Extend for testing purposes
extension User.Kind: CaseIterable {}
