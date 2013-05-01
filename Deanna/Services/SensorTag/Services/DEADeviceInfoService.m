//
// Copyright 2013 Yummy Melon Software LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  Author: Charles Y. Choi <charles.choi@yummymelon.com>
//


#import "DEADeviceInfoService.h"

@implementation DEADeviceInfoService

- (id)initWithName:(NSString *)oName
            baseHi:(int64_t)hi
            baseLo:(int64_t)lo {
    
    self = [super initWithName:oName
                        baseHi:hi
                        baseLo:lo];
    
    
    if (self) {
        [self addCharacteristic:@"service" withAddress:kSensorTag_DEVINFO_SERV_UUID];
        [self addCharacteristic:@"system_id" withAddress:kSensorTag_DEVINFO_SYSTEM_ID];
        [self addCharacteristic:@"model_number" withAddress:kSensorTag_DEVINFO_MODEL_NUMBER];
        [self addCharacteristic:@"serial_number" withAddress:kSensorTag_DEVINFO_SERIAL_NUMBER];
        [self addCharacteristic:@"firmware_rev" withAddress:kSensorTag_DEVINFO_FIRMWARE_REV];
        [self addCharacteristic:@"hardware_rev" withAddress:kSensorTag_DEVINFO_HARDWARE_REV];
        [self addCharacteristic:@"software_rev" withAddress:kSensorTag_DEVINFO_SOFTWARE_REV];
        [self addCharacteristic:@"manufacturer_name" withAddress:kSensorTag_DEVINFO_MANUFACTURER_NAME];
        [self addCharacteristic:@"11073_cert_data" withAddress:kSensorTag_DEVINFO_11073_CERT_DATA];
        // TODO: Undocumented what PnP characteristic address is. Stubbing here for now.
        //[self addCharacteristic:@"pnpid_data" withAddress:kSensorTag_DEVINFO_PNPID_DATA];
    }
    
    return self;
}

@end