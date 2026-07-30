package com.android.launcher3.views;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import b.l.W;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.widget.WidgetsFullSheet;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class OptionsPopupView extends ArrowPopup implements View.OnClickListener, View.OnLongClickListener {
    public final ArrayMap mItemMap;
    public RectF mTargetRect;

    public class OptionItem {
        public final View.OnLongClickListener mClickListener;
        public final StatsLogManager.EventEnum mEventId;
        public final int mIconRes;
        public final int mLabelRes;

        public OptionItem(int i, int i2, StatsLogManager.EventEnum eventEnum, View.OnLongClickListener onLongClickListener) {
            this.mLabelRes = i;
            this.mIconRes = i2;
            this.mEventId = eventEnum;
            this.mClickListener = onLongClickListener;
        }
    }

    public OptionsPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static ArrowPopup getOptionsPopup(Launcher launcher) {
        return (ArrowPopup) launcher.findViewById(R.id.deep_shortcuts_container);
    }

    public static boolean onWidgetsClicked(View view) {
        return openWidgets(Launcher.getLauncher(view.getContext())) != null;
    }

    public static WidgetsFullSheet openWidgets(Launcher launcher) {
        if (!launcher.getPackageManager().isSafeMode()) {
            return WidgetsFullSheet.show(launcher, true);
        }
        Toast.makeText(launcher, R.string.safemode_widget_error, 0).show();
        return null;
    }

    public static void show(Launcher launcher, RectF rectF, List list) {
        OptionsPopupView optionsPopupView = (OptionsPopupView) launcher.getLayoutInflater().inflate(R.layout.longpress_options_menu, (ViewGroup) launcher.mDragLayer, false);
        optionsPopupView.mTargetRect = rectF;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            OptionItem optionItem = (OptionItem) it.next();
            DeepShortcutView deepShortcutView = (DeepShortcutView) optionsPopupView.inflateAndAdd(R.layout.system_shortcut, optionsPopupView);
            deepShortcutView.mIconView.setBackgroundResource(optionItem.mIconRes);
            deepShortcutView.mBubbleText.setText(optionItem.mLabelRes);
            deepShortcutView.mDivider.setVisibility(4);
            deepShortcutView.setOnClickListener(optionsPopupView);
            deepShortcutView.setOnLongClickListener(optionsPopupView);
            optionsPopupView.mItemMap.put(deepShortcutView, optionItem);
        }
        optionsPopupView.reorderAndShow(optionsPopupView.getChildCount());
    }

    public static void showDefaultOptions(Launcher launcher, float f, float f2) {
        float dimension = launcher.getResources().getDimension(R.dimen.options_menu_thumb_size) / 2.0f;
        if (f < RecentsState.NO_OFFSET || f2 < RecentsState.NO_OFFSET) {
            f = launcher.mDragLayer.getWidth() / 2;
            f2 = launcher.mDragLayer.getHeight() / 2;
        }
        RectF rectF = new RectF(f - dimension, f2 - dimension, f + dimension, f2 + dimension);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new OptionItem(Utilities.existsStyleWallpapers(launcher) ? R.string.styles_wallpaper_button_text : R.string.wallpaper_button_text, Utilities.existsStyleWallpapers(launcher) ? R.drawable.ic_palette : R.drawable.ic_wallpaper, StatsLogManager.LauncherEvent.IGNORE, new View.OnLongClickListener() { // from class: c.a.a.b1.r
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return OptionsPopupView.startWallpaperPicker(view);
            }
        }));
        arrayList.add(new OptionItem(R.string.widget_button_text, R.drawable.ic_widget, StatsLogManager.LauncherEvent.LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS, new View.OnLongClickListener() { // from class: c.a.a.b1.t
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return OptionsPopupView.onWidgetsClicked(view);
            }
        }));
        arrayList.add(new OptionItem(R.string.settings_button_text, R.drawable.ic_setting, StatsLogManager.LauncherEvent.LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS, new View.OnLongClickListener() { // from class: c.a.a.b1.a
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                OptionsPopupView.startSettings(view);
                return true;
            }
        }));
        show(launcher, rectF, arrayList);
    }

    public static boolean startSettings(View view) {
        W.recordEvent("Main", "start: startSettings");
        Launcher launcher = Launcher.getLauncher(view.getContext());
        launcher.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher.getPackageName()).addFlags(268435456));
        return true;
    }

    public static boolean startWallpaperPicker(View view) {
        Launcher launcher = Launcher.getLauncher(view.getContext());
        if (!Utilities.isWallpaperAllowed(launcher)) {
            Toast.makeText(launcher, R.string.msg_disabled_by_admin, 0).show();
            return false;
        }
        Intent addFlags = new Intent("android.intent.action.SET_WALLPAPER").addFlags(QuickStepContract.SYSUI_STATE_GLOBAL_ACTIONS_SHOWING);
        Workspace workspace = launcher.mWorkspace;
        int scrollForPage = workspace.getScrollForPage(workspace.getPageNearestToCenterOfScreen());
        WallpaperOffsetInterpolator wallpaperOffsetInterpolator = workspace.mWallpaperOffset;
        wallpaperOffsetInterpolator.wallpaperOffsetForScroll(scrollForPage, wallpaperOffsetInterpolator.getNumScreensExcludingEmpty(), WallpaperOffsetInterpolator.sTempInt);
        Intent putExtra = addFlags.putExtra("com.android.launcher3.WALLPAPER_OFFSET", r5[0] / r5[1]);
        if (Utilities.existsStyleWallpapers(launcher)) {
            putExtra.putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "focus_wallpaper");
        } else {
            putExtra.putExtra("com.android.launcher3.WALLPAPER_FLAVOR", "wallpaper_only");
        }
        String string = launcher.getString(R.string.wallpaper_picker_package);
        if (!TextUtils.isEmpty(string)) {
            putExtra.setPackage(string);
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.intent = putExtra;
        workspaceItemInfo.itemType = 1;
        workspaceItemInfo.container = -108;
        return launcher.k(view, putExtra, workspaceItemInfo, null);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void getTargetObjectLocation(Rect rect) {
        this.mTargetRect.roundOut(rect);
    }

    public final boolean handleViewClick(View view) {
        OptionItem optionItem = (OptionItem) this.mItemMap.get(view);
        if (optionItem == null) {
            return false;
        }
        if (optionItem.mEventId.getId() > 0) {
            this.mLauncher.getStatsLogManager().logger().log(optionItem.mEventId);
        }
        if (!optionItem.mClickListener.onLongClick(view)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 2048) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        handleViewClick(view);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || getPopupContainer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return handleViewClick(view);
    }

    public OptionsPopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mItemMap = new ArrayMap();
    }
}
