/*-------------------------------------------------------------------------------------------
本脚本由 Yanjicg 开发，按照 GPL 3.0 协议开源，
你可以自由使用、修改和分发本脚本，但必须保留本声明信息。
任何人、机构、企业不得更改署名信息。
本脚本基于 GPL V3.0 协议开源，更多信息请参考：https://www.gnu.org/licenses/

@FileName: DialogGetback.ms
@Creat Date: 2024-05-14
@Modify Date : 2024-05-14
@Version: 1.0.0
@Author: Yanjicg/buluw
@License: GNU General Public License, version 3 (GPL-3.0)


Copyright (C)2024 yanjicg.com

This maxscript is open source: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This maxscript is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.If not, see < https://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------------------*/

(
  fn ResetWindowPos window =(
    iwindow = (windows.getchildhwnd 0 window)[1]
    iwindowh = (windows.getWindowPos iwindow).h
    iwindoww = (windows.getWindowPos iwindow).w
    windows.setWindowPos iwindow 0 0 iwindowW iwindowH true
  )
  for m in windows.getChildrenHWND 0 
  where m[6] == windows.getMAXHWND() and m[5] != ""
  do ResetWindowPos m[5]
)