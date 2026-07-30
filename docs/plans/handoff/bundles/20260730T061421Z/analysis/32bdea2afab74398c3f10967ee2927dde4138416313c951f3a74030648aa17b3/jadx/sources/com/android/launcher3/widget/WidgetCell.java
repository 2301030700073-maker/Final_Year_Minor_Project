package com.android.launcher3.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.CancellationSignal;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.WidgetPreviewLoader;
import com.android.launcher3.WidgetPreviewLoader.PreviewLoadTask;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.Executors;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class WidgetCell extends LinearLayout implements View.OnLayoutChangeListener {
    public CancellationSignal mActiveRequest;
    public final BaseActivity mActivity;
    public boolean mAnimatePreview;
    public boolean mApplyBitmapDeferred;
    public int mCellSize;
    public Bitmap mDeferredBitmap;
    public final DeviceProfile mDeviceProfile;
    public WidgetItem mItem;
    public final CheckLongPressHelper mLongPressHelper;
    public int mPresetPreviewSize;
    public TextView mWidgetDims;
    public WidgetImageView mWidgetImage;
    public TextView mWidgetName;
    public WidgetPreviewLoader mWidgetPreviewLoader;

    public WidgetCell(Context context) {
        this(context, null);
    }

    public void applyFromCellItem(WidgetItem widgetItem, WidgetPreviewLoader widgetPreviewLoader) {
        this.mItem = widgetItem;
        this.mWidgetName.setText(widgetItem.label);
        this.mWidgetDims.setText(getContext().getString(R.string.widget_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetDims.setContentDescription(getContext().getString(R.string.widget_accessible_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetPreviewLoader = widgetPreviewLoader;
        ShortcutConfigActivityInfo shortcutConfigActivityInfo = widgetItem.activityInfo;
        if (shortcutConfigActivityInfo != null) {
            setTag(new PendingAddShortcutInfo(shortcutConfigActivityInfo));
        } else {
            setTag(new PendingAddWidgetInfo(widgetItem.widgetInfo));
        }
    }

    public void applyPreview(Bitmap bitmap) {
        Bitmap bitmap2;
        if (this.mApplyBitmapDeferred) {
            this.mDeferredBitmap = bitmap;
            return;
        }
        if (bitmap != null) {
            WidgetImageView widgetImageView = this.mWidgetImage;
            WidgetPreviewLoader widgetPreviewLoader = this.mWidgetPreviewLoader;
            UserHandle userHandle = this.mItem.user;
            int badgeSizeForIconSize = BaseIconFactory.getBadgeSizeForIconSize(this.mDeviceProfile.allAppsIconSizePx);
            FastBitmapDrawable fastBitmapDrawable = null;
            if (!widgetPreviewLoader.mMyUser.equals(userHandle)) {
                synchronized (widgetPreviewLoader.mUserBadges) {
                    bitmap2 = (Bitmap) widgetPreviewLoader.mUserBadges.get(userHandle);
                    if (bitmap2 == null) {
                        Resources resources = widgetPreviewLoader.mContext.getResources();
                        Bitmap createBitmap = Bitmap.createBitmap(badgeSizeForIconSize, badgeSizeForIconSize, Bitmap.Config.ARGB_8888);
                        Drawable userBadgedDrawableForDensity = widgetPreviewLoader.mContext.getPackageManager().getUserBadgedDrawableForDensity(new BitmapDrawable(resources, createBitmap), userHandle, new Rect(0, 0, badgeSizeForIconSize, badgeSizeForIconSize), 0);
                        if (userBadgedDrawableForDensity instanceof BitmapDrawable) {
                            bitmap2 = ((BitmapDrawable) userBadgedDrawableForDensity).getBitmap();
                        } else {
                            createBitmap.eraseColor(0);
                            Canvas canvas = new Canvas(createBitmap);
                            userBadgedDrawableForDensity.setBounds(0, 0, badgeSizeForIconSize, badgeSizeForIconSize);
                            userBadgedDrawableForDensity.draw(canvas);
                            canvas.setBitmap(null);
                            bitmap2 = createBitmap;
                        }
                        widgetPreviewLoader.mUserBadges.put(userHandle, bitmap2);
                    }
                }
                fastBitmapDrawable = new FastBitmapDrawable(bitmap2, 0, false);
                fastBitmapDrawable.setFilterBitmap(true);
                fastBitmapDrawable.setBounds(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
            }
            widgetImageView.mBitmap = bitmap;
            widgetImageView.mBadge = fastBitmapDrawable;
            widgetImageView.invalidate();
            if (!this.mAnimatePreview) {
                this.mWidgetImage.setAlpha(1.0f);
            } else {
                this.mWidgetImage.setAlpha(RecentsState.NO_OFFSET);
                this.mWidgetImage.animate().alpha(1.0f).setDuration(90L);
            }
        }
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void ensurePreview() {
        if (this.mActiveRequest != null) {
            return;
        }
        WidgetPreviewLoader widgetPreviewLoader = this.mWidgetPreviewLoader;
        WidgetItem widgetItem = this.mItem;
        int i = this.mPresetPreviewSize;
        Objects.requireNonNull(widgetPreviewLoader);
        WidgetPreviewLoader.PreviewLoadTask previewLoadTask = widgetPreviewLoader.new PreviewLoadTask(new WidgetPreviewLoader.WidgetCacheKey(widgetItem.componentName, widgetItem.user, i + "x" + i), widgetItem, i, i, this);
        previewLoadTask.executeOnExecutor(Executors.THREAD_POOL_EXECUTOR, new Void[0]);
        CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(previewLoadTask);
        this.mActiveRequest = cancellationSignal;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return WidgetCell.class.getName();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mWidgetImage = (WidgetImageView) findViewById(R.id.widget_preview);
        this.mWidgetName = (TextView) findViewById(R.id.widget_name);
        this.mWidgetDims = (TextView) findViewById(R.id.widget_dims);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        removeOnLayoutChangeListener(this);
        ensurePreview();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        int i = this.mCellSize;
        layoutParams.height = i;
        layoutParams.width = i;
        super.setLayoutParams(layoutParams);
    }

    public WidgetCell(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetCell(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAnimatePreview = true;
        this.mApplyBitmapDeferred = false;
        BaseActivity fromContext = BaseActivity.fromContext(context);
        this.mActivity = fromContext;
        this.mDeviceProfile = fromContext.getDeviceProfile();
        CheckLongPressHelper checkLongPressHelper = new CheckLongPressHelper(this, null);
        this.mLongPressHelper = checkLongPressHelper;
        checkLongPressHelper.mLongPressTimeoutFactor = 1.0f;
        int i2 = (int) (this.mDeviceProfile.allAppsIconSizePx * 3.0f);
        this.mCellSize = i2;
        this.mPresetPreviewSize = (int) (i2 * 0.8f);
        setWillNotDraw(false);
        setClipToPadding(false);
        setAccessibilityDelegate(this.mActivity.getAccessibilityDelegate());
    }
}
