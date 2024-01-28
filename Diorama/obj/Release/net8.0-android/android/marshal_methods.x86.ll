; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [118 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [236 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 1: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 109
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 83839681, ; 5: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 104
	i32 136584136, ; 7: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 8: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 56
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 74
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 87
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 52
	i32 321963286, ; 14: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 63
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 109
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 95
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 19: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 84
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 62
	i32 456227837, ; 22: System.Web.HttpUtility.dll => 0x1b317bfd => 111
	i32 469710990, ; 23: System.dll => 0x1bff388e => 113
	i32 489220957, ; 24: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 101
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 538707440, ; 27: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 597488923, ; 29: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 627931235, ; 31: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 32: System.Collections.Concurrent => 0x2814a96c => 81
	i32 722857257, ; 33: System.Runtime.Loader.dll => 0x2b15ed29 => 105
	i32 759454413, ; 34: System.Net.Requests => 0x2d445acd => 99
	i32 775507847, ; 35: System.IO.Compression => 0x2e394f87 => 92
	i32 777317022, ; 36: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 37: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 823281589, ; 38: System.Private.Uri.dll => 0x311247b5 => 102
	i32 830298997, ; 39: System.IO.Compression.Brotli => 0x317d5b75 => 91
	i32 869139383, ; 40: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 41: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 42: System.ComponentModel.Primitives.dll => 0x35e25008 => 85
	i32 918734561, ; 43: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 44: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 45: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 63
	i32 990727110, ; 46: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 47: System.Collections.dll => 0x3b2c715c => 84
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 73
	i32 1028951442, ; 49: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1035644815, ; 50: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 53
	i32 1043950537, ; 51: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 52: System.Linq.Expressions.dll => 0x3e444eb4 => 93
	i32 1052210849, ; 53: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 65
	i32 1082857460, ; 54: System.ComponentModel.TypeConverter => 0x408b17f4 => 86
	i32 1084122840, ; 55: Xamarin.Kotlin.StdLib => 0x409e66d8 => 78
	i32 1098259244, ; 56: System => 0x41761b2c => 113
	i32 1108272742, ; 57: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 58: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 59: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 60: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 61: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 70
	i32 1260983243, ; 62: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 61
	i32 1308624726, ; 64: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 65: System.Linq => 0x4eed2679 => 94
	i32 1336711579, ; 66: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 67: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 73
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1430672901, ; 70: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 71: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 72: System.Collections.Immutable.dll => 0x5718a9ef => 82
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 92
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 54
	i32 1470490898, ; 75: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 76: System.Collections.Immutable => 0x5833866d => 82
	i32 1480492111, ; 77: System.IO.Compression.Brotli.dll => 0x583e844f => 91
	i32 1526286932, ; 78: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 79: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 108
	i32 1622152042, ; 80: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 67
	i32 1624863272, ; 81: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 76
	i32 1634654947, ; 82: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 83: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 84: System.Net.Http.dll => 0x61b9038d => 96
	i32 1639986890, ; 85: System.Text.RegularExpressions => 0x61c036ca => 108
	i32 1657153582, ; 86: System.Runtime => 0x62c6282e => 106
	i32 1658251792, ; 87: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 77
	i32 1677501392, ; 88: System.Net.Primitives.dll => 0x63fca3d0 => 98
	i32 1679769178, ; 89: System.Security.Cryptography => 0x641f3e5a => 107
	i32 1729485958, ; 90: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 55
	i32 1743415430, ; 91: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 92: System.Diagnostics.TraceSource.dll => 0x69239124 => 90
	i32 1766324549, ; 93: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 74
	i32 1770582343, ; 94: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1780572499, ; 95: Mono.Android.Runtime.dll => 0x6a216153 => 116
	i32 1782862114, ; 96: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 97: Xamarin.AndroidX.Fragment => 0x6a96652d => 62
	i32 1793755602, ; 98: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 67
	i32 1813058853, ; 100: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 78
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 77
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 71
	i32 1828688058, ; 103: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1853025655, ; 104: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 105: System.Linq.Expressions => 0x6ec71a65 => 93
	i32 1875935024, ; 106: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 107: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 108: System.Collections.NonGeneric.dll => 0x71dc7c8b => 83
	i32 1953182387, ; 109: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 110: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 111: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 112: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 65
	i32 2045470958, ; 113: System.Private.Xml => 0x79eb68ee => 103
	i32 2055257422, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 64
	i32 2057861558, ; 115: CommunityToolkit.Maui.Markup => 0x7aa879b6 => 37
	i32 2066184531, ; 116: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 117: System.Diagnostics.TraceSource => 0x7b6f419e => 90
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 106
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 100
	i32 2127167465, ; 120: System.Console => 0x7ec9ffe9 => 88
	i32 2159891885, ; 121: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 122: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 123: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 124: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 125: System.ObjectModel.dll => 0x82b6c85e => 101
	i32 2201107256, ; 126: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 79
	i32 2201231467, ; 127: System.Net.Http => 0x8334206b => 96
	i32 2207618523, ; 128: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 129: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 72
	i32 2298471582, ; 131: System.Net.Mail => 0x88ffe49e => 97
	i32 2303942373, ; 132: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 133: System.Private.CoreLib.dll => 0x896b7878 => 114
	i32 2353062107, ; 134: System.Net.Primitives => 0x8c40e0db => 98
	i32 2366048013, ; 135: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 136: System.Xml.ReaderWriter.dll => 0x8d24e767 => 112
	i32 2371007202, ; 137: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 138: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 139: System.Web.HttpUtility => 0x8f24faee => 111
	i32 2427813419, ; 140: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 141: System.Console.dll => 0x912896e5 => 88
	i32 2475788418, ; 142: Java.Interop.dll => 0x93918882 => 115
	i32 2480646305, ; 143: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2503351294, ; 144: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 145: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 146: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 147: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 79
	i32 2617129537, ; 149: System.Private.Xml.dll => 0x9bfe3a41 => 103
	i32 2620871830, ; 150: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2626831493, ; 151: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 152: System.Runtime.Loader => 0x9ec4cf01 => 105
	i32 2715553329, ; 153: Diorama => 0xa1dc0e31 => 80
	i32 2732626843, ; 154: Xamarin.AndroidX.Activity => 0xa2e0939b => 52
	i32 2737747696, ; 155: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 54
	i32 2740698338, ; 156: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 157: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 158: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 159: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 160: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 75
	i32 2785988530, ; 161: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 162: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2810250172, ; 163: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2849691092, ; 164: Diorama.dll => 0xa9dad5d4 => 80
	i32 2853208004, ; 165: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 75
	i32 2861189240, ; 166: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 167: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 168: System.Private.CoreLib => 0xad6f1e8a => 114
	i32 2916838712, ; 169: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 76
	i32 2919462931, ; 170: System.Numerics.Vectors.dll => 0xae037813 => 100
	i32 2959614098, ; 171: System.ComponentModel.dll => 0xb0682092 => 87
	i32 2978675010, ; 172: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 61
	i32 3038032645, ; 173: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 174: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 175: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 68
	i32 3059408633, ; 176: Mono.Android.Runtime => 0xb65adef9 => 116
	i32 3059793426, ; 177: System.ComponentModel.Primitives => 0xb660be12 => 85
	i32 3178803400, ; 178: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 69
	i32 3220365878, ; 179: System.Threading => 0xbff2e236 => 110
	i32 3258312781, ; 180: Xamarin.AndroidX.CardView => 0xc235e84d => 55
	i32 3305363605, ; 181: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 182: System.Net.Requests.dll => 0xc5b097e4 => 99
	i32 3317135071, ; 183: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3346324047, ; 184: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 70
	i32 3357674450, ; 185: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 186: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 187: Java.Interop => 0xc8a662e9 => 115
	i32 3374999561, ; 188: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 72
	i32 3381016424, ; 189: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3402775237, ; 190: CommunityToolkit.Maui.Markup.dll => 0xcad23ac5 => 37
	i32 3428513518, ; 191: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3452344032, ; 192: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3458724246, ; 193: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 194: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 86
	i32 3476120550, ; 195: Mono.Android => 0xcf3163e6 => 117
	i32 3484440000, ; 196: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 197: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 198: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 199: System.Linq.dll => 0xd715a361 => 94
	i32 3641597786, ; 200: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 64
	i32 3643446276, ; 201: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 202: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 69
	i32 3657292374, ; 203: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 204: Mono.Android.dll => 0xdae8aa5e => 117
	i32 3724971120, ; 205: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 68
	i32 3748608112, ; 206: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 89
	i32 3751619990, ; 207: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 208: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 56
	i32 3792276235, ; 209: System.Collections.NonGeneric => 0xe2098b0b => 83
	i32 3800979733, ; 210: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3817368567, ; 211: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 212: System.Security.Cryptography.dll => 0xe3df9d2b => 107
	i32 3841636137, ; 213: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 214: System.Net.Mail.dll => 0xe52378b9 => 97
	i32 3849253459, ; 215: System.Runtime.InteropServices.dll => 0xe56ef253 => 104
	i32 3896106733, ; 216: System.Collections.Concurrent.dll => 0xe839deed => 81
	i32 3896760992, ; 217: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3920221145, ; 218: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 219: System.Xml.ReaderWriter => 0xea213423 => 112
	i32 3931092270, ; 220: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 71
	i32 3955647286, ; 221: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 53
	i32 4025784931, ; 222: System.Memory => 0xeff49a63 => 95
	i32 4046471985, ; 223: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 224: System.Threading.dll => 0xf2ce3c98 => 110
	i32 4091086043, ; 225: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 226: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4100113165, ; 227: System.Private.Uri => 0xf462c30d => 102
	i32 4103439459, ; 228: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 229: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 230: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 66
	i32 4213026141, ; 232: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 89
	i32 4249188766, ; 233: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 234: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4292120959 ; 235: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 66
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [236 x i32] [
	i32 0, ; 0
	i32 9, ; 1
	i32 109, ; 2
	i32 33, ; 3
	i32 51, ; 4
	i32 17, ; 5
	i32 104, ; 6
	i32 32, ; 7
	i32 25, ; 8
	i32 56, ; 9
	i32 74, ; 10
	i32 87, ; 11
	i32 30, ; 12
	i32 52, ; 13
	i32 8, ; 14
	i32 63, ; 15
	i32 109, ; 16
	i32 95, ; 17
	i32 34, ; 18
	i32 28, ; 19
	i32 84, ; 20
	i32 62, ; 21
	i32 111, ; 22
	i32 113, ; 23
	i32 6, ; 24
	i32 101, ; 25
	i32 45, ; 26
	i32 27, ; 27
	i32 42, ; 28
	i32 35, ; 29
	i32 60, ; 30
	i32 19, ; 31
	i32 81, ; 32
	i32 105, ; 33
	i32 99, ; 34
	i32 92, ; 35
	i32 25, ; 36
	i32 44, ; 37
	i32 102, ; 38
	i32 91, ; 39
	i32 10, ; 40
	i32 24, ; 41
	i32 85, ; 42
	i32 21, ; 43
	i32 14, ; 44
	i32 63, ; 45
	i32 23, ; 46
	i32 84, ; 47
	i32 73, ; 48
	i32 41, ; 49
	i32 53, ; 50
	i32 4, ; 51
	i32 93, ; 52
	i32 65, ; 53
	i32 86, ; 54
	i32 78, ; 55
	i32 113, ; 56
	i32 26, ; 57
	i32 20, ; 58
	i32 16, ; 59
	i32 22, ; 60
	i32 70, ; 61
	i32 2, ; 62
	i32 61, ; 63
	i32 11, ; 64
	i32 94, ; 65
	i32 31, ; 66
	i32 32, ; 67
	i32 73, ; 68
	i32 57, ; 69
	i32 0, ; 70
	i32 6, ; 71
	i32 82, ; 72
	i32 92, ; 73
	i32 54, ; 74
	i32 45, ; 75
	i32 82, ; 76
	i32 91, ; 77
	i32 30, ; 78
	i32 108, ; 79
	i32 67, ; 80
	i32 76, ; 81
	i32 36, ; 82
	i32 59, ; 83
	i32 96, ; 84
	i32 108, ; 85
	i32 106, ; 86
	i32 77, ; 87
	i32 98, ; 88
	i32 107, ; 89
	i32 55, ; 90
	i32 1, ; 91
	i32 90, ; 92
	i32 74, ; 93
	i32 42, ; 94
	i32 116, ; 95
	i32 17, ; 96
	i32 62, ; 97
	i32 9, ; 98
	i32 67, ; 99
	i32 78, ; 100
	i32 77, ; 101
	i32 71, ; 102
	i32 43, ; 103
	i32 26, ; 104
	i32 93, ; 105
	i32 8, ; 106
	i32 2, ; 107
	i32 83, ; 108
	i32 13, ; 109
	i32 38, ; 110
	i32 5, ; 111
	i32 65, ; 112
	i32 103, ; 113
	i32 64, ; 114
	i32 37, ; 115
	i32 4, ; 116
	i32 90, ; 117
	i32 106, ; 118
	i32 100, ; 119
	i32 88, ; 120
	i32 49, ; 121
	i32 12, ; 122
	i32 44, ; 123
	i32 43, ; 124
	i32 101, ; 125
	i32 79, ; 126
	i32 96, ; 127
	i32 14, ; 128
	i32 39, ; 129
	i32 72, ; 130
	i32 97, ; 131
	i32 18, ; 132
	i32 114, ; 133
	i32 98, ; 134
	i32 12, ; 135
	i32 112, ; 136
	i32 38, ; 137
	i32 13, ; 138
	i32 111, ; 139
	i32 10, ; 140
	i32 88, ; 141
	i32 115, ; 142
	i32 47, ; 143
	i32 16, ; 144
	i32 11, ; 145
	i32 15, ; 146
	i32 20, ; 147
	i32 79, ; 148
	i32 103, ; 149
	i32 59, ; 150
	i32 15, ; 151
	i32 105, ; 152
	i32 80, ; 153
	i32 52, ; 154
	i32 54, ; 155
	i32 1, ; 156
	i32 21, ; 157
	i32 48, ; 158
	i32 49, ; 159
	i32 75, ; 160
	i32 27, ; 161
	i32 51, ; 162
	i32 57, ; 163
	i32 80, ; 164
	i32 75, ; 165
	i32 50, ; 166
	i32 36, ; 167
	i32 114, ; 168
	i32 76, ; 169
	i32 100, ; 170
	i32 87, ; 171
	i32 61, ; 172
	i32 34, ; 173
	i32 7, ; 174
	i32 68, ; 175
	i32 116, ; 176
	i32 85, ; 177
	i32 69, ; 178
	i32 110, ; 179
	i32 55, ; 180
	i32 7, ; 181
	i32 99, ; 182
	i32 60, ; 183
	i32 70, ; 184
	i32 24, ; 185
	i32 58, ; 186
	i32 115, ; 187
	i32 72, ; 188
	i32 3, ; 189
	i32 37, ; 190
	i32 40, ; 191
	i32 46, ; 192
	i32 22, ; 193
	i32 86, ; 194
	i32 117, ; 195
	i32 23, ; 196
	i32 31, ; 197
	i32 33, ; 198
	i32 94, ; 199
	i32 64, ; 200
	i32 28, ; 201
	i32 69, ; 202
	i32 39, ; 203
	i32 117, ; 204
	i32 68, ; 205
	i32 89, ; 206
	i32 3, ; 207
	i32 56, ; 208
	i32 83, ; 209
	i32 46, ; 210
	i32 35, ; 211
	i32 107, ; 212
	i32 41, ; 213
	i32 97, ; 214
	i32 104, ; 215
	i32 81, ; 216
	i32 58, ; 217
	i32 19, ; 218
	i32 112, ; 219
	i32 71, ; 220
	i32 53, ; 221
	i32 95, ; 222
	i32 48, ; 223
	i32 110, ; 224
	i32 5, ; 225
	i32 50, ; 226
	i32 102, ; 227
	i32 29, ; 228
	i32 40, ; 229
	i32 29, ; 230
	i32 66, ; 231
	i32 89, ; 232
	i32 18, ; 233
	i32 47, ; 234
	i32 66 ; 235
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
