@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem ---- 文字化け対策（必要ない場合は削除OK）----
chcp 65001 >nul

echo.
echo =========================================
echo   Add "s_" prefix to image file names
echo   (BP01: 001-097, ST01: 001-025, ST02: 001-025)
echo =========================================
echo.

rem ===== BP01 =====
if exist "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\BP01" (
  pushd "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\BP01"
  for /l %%i in (1,1,97) do (
    set "num=00%%i"
    set "num=!num:~-3!"
    if exist "BP01-!num!.png" (
      if not exist "s_BP01-!num!.png" (
        ren "BP01-!num!.png" "s_BP01-!num!.png" && echo [REN] BP01-!num!.png ^> s_BP01-!num!.png
      ) else (
        echo [SKIP] s_BP01-!num!.png already exists
      )
    )
  )
  popd
) else (
  echo [WARN] Folder not found: ^"C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\BP01^"
)

echo.

rem ===== ST01 =====
if exist "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST01" (
  pushd "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST01"
  for /l %%i in (1,1,25) do (
    set "num=00%%i"
    set "num=!num:~-3!"
    if exist "ST01-!num!.png" (
      if not exist "s_ST01-!num!.png" (
        ren "ST01-!num!.png" "s_ST01-!num!.png" && echo [REN] ST01-!num!.png ^> s_ST01-!num!.png
      ) else (
        echo [SKIP] s_ST01-!num!.png already exists
      )
    )
  )
  popd
) else (
  echo [WARN] Folder not found: ^"C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST01^"
)

echo.

rem ===== ST02 =====
if exist "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST02" (
  pushd "C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST02"
  for /l %%i in (1,1,25) do (
    set "num=00%%i"
    set "num=!num:~-3!"
    if exist "ST02-!num!.png" (
      if not exist "s_ST02-!num!.png" (
        ren "ST02-!num!.png" "s_ST02-!num!.png" && echo [REN] ST02-!num!.png ^> s_ST02-!num!.png
      ) else (
        echo [SKIP] s_ST02-!num!.png already exists
      )
    )
  )
  popd
) else (
  echo [WARN] Folder not found: ^"C:\Users\xmasashi_nakamura\Downloads\BulkResizePhotos.com\ST02^"
)

echo.
echo === Done. ===
echo （ウィンドウを閉じるには何かキーを押してください）
pause >nul

endlocal
