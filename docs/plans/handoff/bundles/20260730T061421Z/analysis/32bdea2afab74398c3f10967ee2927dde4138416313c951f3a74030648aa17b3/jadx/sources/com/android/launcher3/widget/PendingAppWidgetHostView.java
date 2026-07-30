package com.android.launcher3.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import b.l.W;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PendingAppWidgetHostView extends LauncherAppWidgetHostView implements View.OnClickListener, IconCache.ItemInfoUpdateReceiver {
    public Drawable mCenterDrawable;
    public View.OnClickListener mClickListener;
    public View mDefaultView;
    public final boolean mDisabledForSafeMode;
    public boolean mDrawableSizeChanged;
    public final LauncherAppWidgetInfo mInfo;
    public final TextPaint mPaint;
    public final Rect mRect;
    public Drawable mSettingIconDrawable;
    public Layout mSetupTextLayout;
    public final int mStartState;

    public PendingAppWidgetHostView(Context context, LauncherAppWidgetInfo launcherAppWidgetInfo, IconCache iconCache, boolean z) {
        super(new ContextThemeWrapper(context, R.style.WidgetContainerTheme));
        this.mRect = new Rect();
        this.mInfo = launcherAppWidgetInfo;
        this.mStartState = launcherAppWidgetInfo.restoreStatus;
        this.mDisabledForSafeMode = z;
        TextPaint textPaint = new TextPaint();
        this.mPaint = textPaint;
        textPaint.setColor(W.getAttrColor(getContext(), android.R.attr.textColorPrimary));
        this.mPaint.setTextSize(TypedValue.applyDimension(0, this.mLauncher.getDeviceProfile().iconTextSizePx, getResources().getDisplayMetrics()));
        setBackgroundResource(R.drawable.pending_widget_bg);
        setWillNotDraw(false);
        setElevation(getResources().getDimension(R.dimen.pending_widget_elevation));
        updateAppWidget(null);
        this.mClickListener = ItemClickHandler.INSTANCE;
        PackageItemInfo packageItemInfo = launcherAppWidgetInfo.pendingItemInfo;
        if (packageItemInfo != null) {
            reapplyItemInfo(packageItemInfo);
            return;
        }
        PackageItemInfo packageItemInfo2 = new PackageItemInfo(launcherAppWidgetInfo.providerName.getPackageName());
        launcherAppWidgetInfo.pendingItemInfo = packageItemInfo2;
        packageItemInfo2.user = launcherAppWidgetInfo.user;
        iconCache.updateIconInBackground(this, packageItemInfo2);
    }

    public void applyState() {
        Drawable drawable = this.mCenterDrawable;
        if (drawable != null) {
            drawable.setLevel(Math.max(this.mInfo.installProgress, 0));
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public View getDefaultView() {
        if (this.mDefaultView == null) {
            View inflate = this.mInflater.inflate(R.layout.appwidget_not_ready, (ViewGroup) this, false);
            this.mDefaultView = inflate;
            inflate.setOnClickListener(this);
            applyState();
        }
        return this.mDefaultView;
    }

    public boolean isReadyForClickSetup() {
        return !this.mInfo.hasRestoreFlag(2) && (this.mInfo.hasRestoreFlag(4) || this.mInfo.hasRestoreFlag(1));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.mClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mCenterDrawable == null) {
            return;
        }
        if (this.mDrawableSizeChanged) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.pending_widget_min_padding);
            int width = (getWidth() - paddingLeft) - paddingRight;
            int i = dimensionPixelSize * 2;
            int i2 = width - i;
            int height = ((getHeight() - paddingTop) - paddingBottom) - i;
            if (this.mSettingIconDrawable == null) {
                int min = Math.min(deviceProfile.iconSizePx, Math.min(i2, height));
                this.mRect.set(0, 0, min, min);
                this.mRect.offsetTo((getWidth() - this.mRect.width()) / 2, (getHeight() - this.mRect.height()) / 2);
                this.mCenterDrawable.setBounds(this.mRect);
            } else {
                float max = Math.max(0, Math.min(i2, height));
                float f = max * 1.8f;
                float max2 = Math.max(i2, height);
                if (f > max2) {
                    max = max2 / 1.8f;
                }
                int min2 = (int) Math.min(max, deviceProfile.iconSizePx);
                int height2 = (getHeight() - min2) / 2;
                this.mSetupTextLayout = null;
                if (i2 > 0) {
                    StaticLayout staticLayout = new StaticLayout(getResources().getText(R.string.gadget_setup_text), this.mPaint, i2, Layout.Alignment.ALIGN_CENTER, 1.0f, RecentsState.NO_OFFSET, true);
                    this.mSetupTextLayout = staticLayout;
                    int height3 = staticLayout.getHeight();
                    if ((min2 * 1.8f) + height3 + deviceProfile.iconDrawablePaddingPx < height) {
                        height2 = (((getHeight() - height3) - deviceProfile.iconDrawablePaddingPx) - min2) / 2;
                    } else {
                        this.mSetupTextLayout = null;
                    }
                }
                this.mRect.set(0, 0, min2, min2);
                this.mRect.offset((getWidth() - min2) / 2, height2);
                this.mCenterDrawable.setBounds(this.mRect);
                Rect rect = this.mRect;
                int i3 = paddingLeft + dimensionPixelSize;
                rect.left = i3;
                int i4 = (int) (min2 * 0.4f);
                rect.right = i3 + i4;
                int i5 = paddingTop + dimensionPixelSize;
                rect.top = i5;
                rect.bottom = i5 + i4;
                this.mSettingIconDrawable.setBounds(rect);
                if (this.mSetupTextLayout != null) {
                    Rect rect2 = this.mRect;
                    rect2.left = i3;
                    rect2.top = this.mCenterDrawable.getBounds().bottom + deviceProfile.iconDrawablePaddingPx;
                }
            }
            this.mDrawableSizeChanged = false;
        }
        this.mCenterDrawable.draw(canvas);
        Drawable drawable = this.mSettingIconDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        if (this.mSetupTextLayout != null) {
            canvas.save();
            Rect rect3 = this.mRect;
            canvas.translate(rect3.left, rect3.top);
            this.mSetupTextLayout.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mDrawableSizeChanged = true;
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        Drawable drawable = this.mCenterDrawable;
        if (drawable != null) {
            drawable.setCallback(null);
            this.mCenterDrawable = null;
        }
        if (itemInfoWithIcon.bitmap.icon != null) {
            if (this.mDisabledForSafeMode) {
                FastBitmapDrawable newIcon = FastBitmapDrawable.newIcon(getContext(), itemInfoWithIcon);
                newIcon.setIsDisabled(true);
                this.mCenterDrawable = newIcon;
                this.mSettingIconDrawable = null;
            } else if (isReadyForClickSetup()) {
                this.mCenterDrawable = FastBitmapDrawable.newIcon(getContext(), itemInfoWithIcon);
                this.mSettingIconDrawable = getResources().getDrawable(R.drawable.ic_setting).mutate();
                float[] fArr = new float[3];
                Color.colorToHSV(itemInfoWithIcon.bitmap.color, fArr);
                fArr[1] = Math.min(fArr[1], 0.7f);
                fArr[2] = 1.0f;
                this.mSettingIconDrawable.setColorFilter(Color.HSVToColor(fArr), PorterDuff.Mode.SRC_IN);
            } else {
                this.mCenterDrawable = new PreloadIconDrawable(itemInfoWithIcon, getContext());
                this.mSettingIconDrawable = null;
                applyState();
            }
            this.mCenterDrawable.setCallback(this);
            this.mDrawableSizeChanged = true;
        }
        invalidate();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mClickListener = onClickListener;
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetHostView, android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        super.updateAppWidget(remoteViews);
        if (AppWidgetManager.getInstance(getContext()).getAppWidgetOptions(this.mInfo.appWidgetId).getBoolean("appWidgetRestoreCompleted")) {
            reInflate();
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidgetSize(Bundle bundle, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mCenterDrawable || super.verifyDrawable(drawable);
    }
}
