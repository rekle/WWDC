//
//  ViewController.swift
//  WWDC
//
//  Created by Richard Ekle on 9/29/15.
//  Copyright © 2015 Ekle Software, Inc. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UITableViewController {
    
    var names = [String]()
    var urls = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.readURLs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let index = indexPath.row
        
        let url = urls[index]
        let controller = VideoPlayer()
        controller.url = url
        
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func readURLs()
    {
        names.append("217 - Adopting New Trackpad Features")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/217wu453thu1r1/217/217_hd_adopting_new_trackpad_features.mp4?dl=1")
        
        names.append("226 - Advanced NSOperations")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2267p2ni281ba/226/226_hd_advanced_nsoperations.mp4?dl=1")
        
        names.append("233 - Advanced Touch Input on iOS")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/233l9q8hj9mw/233/233_hd_advanced_touch_input_on_ios.mp4?dl=1")
        
        names.append("224 - App Extension Best Practices")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/224o6pqmtb4ik/224/224_hd_app_extension_best_practices.mp4?dl=1")
        
        names.append("204 - Apple Watch Accessibility")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2048w4vdjhe1i1m/204/204_hd_apple_watch_accessibility.mp4?dl=1")
        
        names.append("232 - Best Practices for Progress Reporting")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/232f1zopzycv/232/232_hd_best_practices_for_progress_reporting.mp4?dl=1")
        
        names.append("213 - Building Apps with ResearchKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/213w6grumlfm0q/213/213_hd_building_apps_with_researchkit.mp4?dl=1")
        
        names.append("234 - Building Document Based Apps")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/234reaz1byqc/234/234_hd_building_document_based_apps.mp4?dl=1")
        
        names.append("231 - Cocoa Touch Best Practices")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2313dt427pmq/231/231_hd_cocoa_touch_best_practices.mp4?dl=1")
        
        names.append("209 - Creating Complications with ClockKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/209c9277tttlt9/209/209_hd_creating_complications_with_clockkit.mp4?dl=1")
        
        names.append("205 - Getting Started with Multitasking on iPad in iOS 9")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2058z3fx76huw93/205/205_hd_getting_started_with_multitasking_on_ipad_in_ios_9.mp4?dl=1")
        
        names.append("221 - Improving the Full Screen Window Experience")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/22160ycymy0qg/221/221_hd_improving_the_full_screen_window_experience.mp4?dl=1")

        names.append("214 - Introducing On Demand Resources")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/214dh5q5d0kswh/214/214_hd_introducing_on_demand_resources.mp4?dl=1")
        
        names.append("504 - Introducing Safari View Controller")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/5048tyhotl6/504/504_hd_introducing_safari_view_controller.mp4?dl=1")
        
        names.append("223 - Introducing the Contacts Framework for iOS and OS X")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/223rmo6dv9hxh/223/223_hd_introducing_the_contacts_framework_for_ios_and_os_x.mp4?dl=1")
        
        names.append("216 - Layout and Animation Techniques for WatchKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/216isrjt4ku9w4/216/216_hd_layout_and_animation_techniques_for_watchkit.mp4?dl=1")
        
        names.append("211 - Multitasking Essentials for Media-Based Apps on iPad in iOS 9")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/211dseo3cn0bnw/211/211_hd_multitasking_essentials_for_mediabased_apps_on_ipad_in_ios_9.mp4?dl=1")
        
        names.append("218 - Mysteries of Auto Layout, Part 1")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2187le7kpyhdff/218/218_hd_mysteries_of_auto_layout_part_1.mp4?dl=1")
        
        names.append("219 - Mysteries of Auto Layout, Part 2")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/219u3bqgvsz2g/219/219_hd_mysteries_of_auto_layout_part_2.mp4?dl=1")
        
        names.append("222 - New UIKit Support for International User Interfaces")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/222ngkqh58b52/222/222_hd_new_uikit_support_for_international_user_interfaces.mp4?dl=1")
        
        names.append("212 - Optimizing Your App for Multitasking on iPad in iOS 9")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/212mm5ra3oau66/212/212_hd_optimizing_your_app_for_multitasking_on_ipad_in_ios_9.mp4?dl=1")
        
        names.append("230 - Performance on iOS and watchOS")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/230wt8hs0wt8/230/230_hd_performance_on_ios_and_watchos.mp4?dl=1")
        
        names.append("509 - Seamless Linking to Your App")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/5091mxk00t/509/509_hd_seamless_linking_to_your_app.mp4?dl=1")
        
        names.append("207 - WatchKit In-Depth, Part 1")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/207id8oiaxrt6lh/207/207_hd_watchkit_indepth_part_1.mp4?dl=1")
        
        names.append("208 - WatchKit In-Depth, Part 2")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/208wc2mdvock1md/208/208_hd_watchkit_indepth_part_2.mp4?dl=1")
        
        names.append("228 - WatchKit Tips and Tricks")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/228eahxjbaops/228/228_hd_watchkit_tips_and_tricks.mp4?dl=1")
        
        names.append("202 - What's New in Cocoa")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/2023wpov1sxpnf9/202/202_hd_whats_new_in_cocoa.mp4?dl=1")
        
        names.append("220 - What's New in Core Data")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/220lgx5lvphj2/220/220_hd_whats_new_in_core_data.mp4?dl=1")
        
        names.append("203 - What's New in HealthKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/203bxvbtrom9t1t/203/203_hd_whats_new_in_healthkit.mp4?dl=1")
        
        names.append("210 - What's New in HomeKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/210oyq5peqlavb/210/210_hd_whats_new_in_homekit.mp4?dl=1")
        
        names.append("227 - What's New in Internationalization")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/227s0ti458qgg/227/227_hd_whats_new_in_internationalization.mp4?dl=1")
        
        names.append("206 - What's New in MapKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/206v5ce46maax7s/206/206_hd_whats_new_in_mapkit.mp4?dl=1")
        
        names.append("225 - What's New in NSCollectionView")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/225629tzulwe0/225/225_hd_whats_new_in_nscollectionview.mp4?dl=1")
        
        names.append("215 - What's New in Storyboards")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/215972d0hjjcfx/215/215_hd_whats_new_in_storyboards.mp4?dl=1")
        
        names.append("229 - What's New in UIKit Dynamics and Visual Effects")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/229fksrj39nd/229/229_hd_whats_new_in_uikit_dynamics_and_visual_effects.mp4?dl=1")
        
        names.append("201 - iOS Accessibility")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/201pps6n6g0nsnz/201/201_hd_ios_accessibility.mp4?dl=1")
        
        names.append("805 - Apple Watch Design Tips and Tricks")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/805yjy11epjkgmnn11/805/805_hd_apple_watch_design_tips_and_tricks.mp4?dl=1")
        
        names.append("802 - Designing for Apple Watch")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/802mpzd3nzovlygpbg/802/802_hd_designing_for_apple_watch.mp4?dl=1")
        
        names.append("801 - Designing for Future Hardware")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/801auxyvb1pgtkufjk/801/801_hd_designing_for_future_hardware.mp4?dl=1")
        
        names.append("803 - Designing with Animation")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/803q4kw6eqia7ssp17/803/803_hd_designing_with_animation.mp4?dl=1")
        
        names.append("804 - Introducing the New System Fonts")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/804eub264zh3x4j9yb/804/804_hd_introducing_the_new_system_fonts.mp4?dl=1")
        
        names.append("413 - Advanced Debugging and the Address Sanitizer")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/413eflf3lrh1tyo/413/413_hd_advanced_debugging_and_the_address_sanitizer.mp4?dl=1")
        
        names.append("404 - App Thinning in Xcode")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/404l17yio30l549x/404/404_hd_app_thinning_in_xcode.mp4?dl=1")
        
        names.append("405 - Authoring Rich Playgrounds")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/405t69ymgwkmfzc9/405/405_hd_authoring_rich_playgrounds.mp4?dl=1")
        
        names.append("414 - Building Better Apps with Value Types in Swift")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/414sklk5h2k3ki3/414/414_hd_building_better_apps_with_value_types_in_swift.mp4?dl=1")
        
        names.append("410 - Continuous Integration and Code Coverage in Xcode")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/41097fby32x3opk/410/410_hd_continuous_integration_and_code_coverage_in_xcode.mp4?dl=1")
        
        names.append("407 - Implementing UI Designs in Interface Builder")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/4072909wwb9o9j3/407/407_hd_implementing_ui_designs_in_interface_builder.mp4?dl=1")
        
        names.append("403 - Improving Your Existing Apps with Swift")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/403l7ohdidhmnkgx/403/403_hd_improving_your_existing_apps_with_swift.mp4?dl=1")
        
        names.append("409 - Optimizing Swift Performance")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/4097c25o0qhs6g5/409/409_hd_optimizing_swift_performance.mp4?dl=1")
        
        names.append("412 - Profiling in Depth")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/412rhea5amj6iaf/412/412_hd_profiling_in_depth.mp4?dl=1")
        
        names.append("408 - Protocol-Oriented Programming in Swift")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/408509vyudbqvts/408/408_hd_protocoloriented_programming_in_swift.mp4?dl=1")
        
        names.append("401 - Swift and Objective-C Interoperability")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/401gee20yy5v2men/401/401_hd_swift_and_objectivec_interoperability.mp4?dl=1")
        
        names.append("411 - Swift in Practice")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/4119flfsnsgmlfy/411/411_hd_swift_in_practice.mp4?dl=1")
        
        names.append("406 - UI Testing in Xcode")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/406o0doszwo8r15m/406/406_hd_ui_testing_in_xcode.mp4?dl=1")
        
        names.append("402 - What's New in LLDB")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/402c0mhxbs8tt52t/402/402_hd_whats_new_in_lldb.mp4?dl=1")
        
        names.append("303 - Getting the Most out of App Analytics")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/303qzm09e7/303/303_hd_getting_the_most_out_of_app_analytics.mp4?dl=1")
        
        names.append("306 - Supporting the Enterprise with OS X Automation")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/306vjwcqnm/306/306_hd_supporting_the_enterprise_with_os_x_automation.mp4?dl=1")
        
        names.append("301 - What's New in Managing Apple Devices")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/301tcfp66f/301/301_hd_whats_new_in_managing_apple_devices.mp4?dl=1")
        
        names.append("302 - What's New in iTunes Connect")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/302sxabxp0/302/302_hd_whats_new_in_itunes_connect.mp4?dl=1")
        
        names.append("304 - iTunes Connect: Development to Distribution")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/304ywrr62d/304/304_hd_itunes_connect_development_to_distribution.mp4?dl=1")
        
        names.append("103 - Apple Design Awards")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/103ot7lzkdri2fvn1iyh/103/103_hd_apple_design_awards.mp4?dl=1")
        
        names.append("108 - Building Watch Apps")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/1086gvs7f4vryixs49s6/108/108_hd_building_watch_apps.mp4?dl=1")
        
        names.append("105 - Introducing WatchKit for watchOS 2")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/105ncyldc6ofunvsgtan/105/105_hd_introducing_watchkit_for_watchos_2.mp4?dl=1")
        
        names.append("101 - Keynote")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/1014o78qhj07pbfxt9g7/101/101_hd_keynote.mp4?dl=1")
        
        names.append("102 - Platforms State of the Union")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/1026npwuy2crj2xyuq11/102/102_hd_platforms_state_of_the_union.mp4?dl=1")
        
        names.append("112 - Think Audacious")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/112lwa56zromr4h6uf0/112/112_hd_think_audacious.mp4?dl=1")
        
        names.append("107 - What's New in Cocoa Touch")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/1075hpxmc54818sn59su/107/107_hd_whats_new_in_cocoa_touch.mp4?dl=1")
        
        names.append("106 - What's New in Swift")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/106z3yjwpfymnauri96m/106/106_hd_whats_new_in_swift.mp4?dl=1")
        
        names.append("104 - What's New in Xcode")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/104usewvb5m0qbwafx8p/104/104_hd_whats_new_in_xcode.mp4?dl=1")
        
        names.append("609 - Deeper into GameplayKit with DemoBots")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/609pzlyunriyjupp/609/609_hd_deeper_into_gameplaykit_with_demobots.mp4?dl=1")
        
        names.append("606 - Enhancements to SceneKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/606ui2ppsvalj4nn/606/606_hd_enhancements_to_scenekit.mp4?dl=1")
        
        names.append("605 - Going Social with ReplayKit and Game Center")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/6053hq2fz0ebo0lm/605/605_hd_going_social_with_replaykit_and_game_center.mp4?dl=1")
        
        names.append("608 - Introducing GameplayKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/608rpwq1ltvg5nmk/608/608_hd_introducing_gameplaykit.mp4?dl=1")
        
        names.append("602 - Managing 3D Assets with Model I/O")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/602868pb0ow6idb3w/602/602_hd_managing_3d_assets_with_model_io.mp4?dl=1")
        
        names.append("610 - Metal Performance Optimization Techniques")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/610kn68riy9ms89m/610/610_hd_metal_performance_optimization_techniques.mp4?dl=1")
        
        names.append("603 - What's New in Metal, Part 1")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/6037pi9rxl6tfss8w/603/603_hd_whats_new_in_metal_part_1.mp4?dl=1")
        
        names.append("607 - What's New in Metal, Part 2")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/607g5z16fpl7pzgi/607/607_hd_whats_new_in_metal_part_2.mp4?dl=1")
        
        names.append("604 - What's New in SpriteKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/604gq12qghmv39znb/604/604_hd_whats_new_in_spritekit.mp4?dl=1")
        
        names.append("508 - Audio Unit Extensions")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/508691kyzp/508/508_hd_audio_unit_extensions.mp4?dl=1")
        
        names.append("502 - Content Protection for HTTP Live Streaming")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/502sufwcpog/502/502_hd_content_protection_for_http_live_streaming.mp4?dl=1")
        
        names.append("506 - Editing Movies in AV Foundation")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/5062qehwhs/506/506_hd_editing_movies_in_av_foundation.mp4?dl=1")
        
        names.append("503 - Monetize and Promote Your App with iAd")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/503oad8l55m/503/503_hd_monetize_and_promote_your_app_with_iad.mp4?dl=1")
        
        names.append("511 - Safari Extensibility: Content Blocking and Shared Links")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/511kmynuza/511/511_hd_safari_extensibility_content_blocking_and_shared_links.mp4?dl=1")
        
        names.append("505 - Using Safari to Deliver and Debug a Responsive Web Design")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/5059xl75l59/505/505_hd_using_safari_to_deliver_and_debug_a_responsive_web_design.mp4?dl=1")
        
        names.append("507 - What's New in Core Audio")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/507pq8rldk/507/507_hd_whats_new_in_core_audio.mp4?dl=1")
        
        names.append("510 - What's New in Core Image")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/510jiccqsz/510/510_hd_whats_new_in_core_image.mp4?dl=1")
        
        names.append("501 - What's New in Web Development in WebKit and Safari")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/501g8vwlgg2/501/501_hd_whats_new_in_web_development_in_webkit_and_safari.mp4?dl=1")
        
        names.append("707 - Achieving All-day Battery Life")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/707ysegpumy/707/707_hd_achieving_allday_battery_life.mp4?dl=1")
        
        names.append("702 - Apple Pay Within Apps")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/702lp563ezbr/702/702_hd_apple_pay_within_apps.mp4?dl=1")
        
        names.append("718 - Building Responsive and Efficient Apps with GCD")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/718b7aw9tq/718/718_hd_building_responsive_and_efficient_apps_with_gcd.mp4?dl=1")
        
        names.append("710 - CloudKit JS and Web Services")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/710jle9eakx/710/710_hd_cloudkit_js_and_web_services.mp4?dl=1")
        
        names.append("715 - CloudKit Tips and Tricks")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/7153rwmu2r/715/715_hd_cloudkit_tips_and_tricks.mp4?dl=1")
        
        names.append("708 - Debugging Energy Issues")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/708xzs0dtwx/708/708_hd_debugging_energy_issues.mp4?dl=1")
        
        names.append("709 - Introducing Search APIs")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/709jcaer6su/709/709_hd_introducing_search_apis.mp4?dl=1")
        
        names.append("713 - Introducing Watch Connectivity")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/713gc2tqvvb/713/713_hd_introducing_watch_connectivity.mp4?dl=1")
        
        names.append("712 - Low Energy, High Performance: Compression and Accelerate")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/7125ovmdf36/712/712_hd_low_energy_high_performance_compression_and_accelerate.mp4?dl=1")
        
        names.append("711 - Networking with NSURLSession")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/711y6zlz0ll/711/711_hd_networking_with_nsurlsession.mp4?dl=1")
        
        names.append("703 - Privacy and Your App")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/703kp2dwbwkr/703/703_hd_privacy_and_your_app.mp4?dl=1")
        
        names.append("706 - Security and Your Apps")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/706nu20qkag/706/706_hd_security_and_your_apps.mp4?dl=1")
        
        names.append("701 - Wallet - The home for Apple Pay and more")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/701i2qis0reg/701/701_hd_wallet__the_home_for_apple_pay_and_more.mp4?dl=1")
        
        names.append("704 - What's New in CloudKit")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/704ci202euy/704/704_hd_whats_new_in_cloudkit.mp4?dl=1")
        
        names.append("714 - What's New in Core Location")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/714tqy593v/714/714_hd_whats_new_in_core_location.mp4?dl=1")
        
        names.append("705 - What's New in Core Motion")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/705qrxhfxo0/705/705_hd_whats_new_in_core_motion.mp4?dl=1")
        
        names.append("717 - What's New in Network Extension and VPN")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/717yq4y85w/717/717_hd_whats_new_in_network_extension_and_vpn.mp4?dl=1")
        
        names.append("720 - What's New in Notifications")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/720xwbi9nl/720/720_hd_whats_new_in_notifications.mp4?dl=1")
        
        names.append("719 - Your App and Next Generation Networks")
        urls.append("http://devstreaming.apple.com/videos/wwdc/2015/719ui2k57m/719/719_hd_your_app_and_next_generation_networks.mp4?dl=1")

    }

}
