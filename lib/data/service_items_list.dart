import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/models/service_item_model.dart';
import 'package:myportfolio/utils/strings.dart';

final List<ServiceItemModel> serviceItemsList = [
  ServiceItemModel(
    icon: MingCuteIcons.mgc_cellphone_line,
    label: serviceMobileDev,
  ),
  ServiceItemModel(
    icon: MingCuteIcons.mgc_web_line,
    label: serviceWebDev,
  ),
  ServiceItemModel(
    icon: MingCuteIcons.mgc_palette_2_line,
    label: serviceUiUx,
  ),
  ServiceItemModel(
    icon: MingCuteIcons.mgc_edit_4_line,
    label: serviceTechWriting,
  ),
  ServiceItemModel(
    icon: MingCuteIcons.mgc_code_line,
    label: serviceOpenSource,
  ),
];
