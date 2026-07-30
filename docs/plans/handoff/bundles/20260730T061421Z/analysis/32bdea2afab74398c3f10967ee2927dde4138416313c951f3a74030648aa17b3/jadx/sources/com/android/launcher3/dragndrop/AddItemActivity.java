package com.android.launcher3.dragndrop;

import android.annotation.TargetApi;
import android.app.ActivityOptions;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.dragndrop.AddItemActivity;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.WidgetHostViewLoader;
import com.android.launcher3.widget.WidgetImageView;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.function.Supplier;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class AddItemActivity extends BaseActivity implements View.OnLongClickListener, View.OnTouchListener {
    public LauncherAppState mApp;
    public LauncherAppWidgetHost mAppWidgetHost;
    public WidgetManagerHelper mAppWidgetManager;
    public InvariantDeviceProfile mIdp;
    public InstantAppResolver mInstantAppResolver;
    public int mPendingBindWidgetId;
    public LauncherApps.PinItemRequest mRequest;
    public LivePreviewWidgetCell mWidgetCell;
    public Bundle mWidgetOptions;
    public final PointF mLastTouchPos = new PointF();
    public boolean mFinishOnPause = false;

    public WidgetItem a(PinShortcutRequestActivityInfo pinShortcutRequestActivityInfo) {
        return new WidgetItem(pinShortcutRequestActivityInfo, this.mApp.mIconCache, getPackageManager());
    }

    public final void acceptWidget(int i) {
        InstallShortcutReceiver.queueWidget(this.mRequest.getAppWidgetProviderInfo(this), i, this);
        this.mWidgetOptions.putInt("appWidgetId", i);
        this.mRequest.accept(this.mWidgetOptions);
        logCommand(4);
        finish();
    }

    public WidgetItem b(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        return new WidgetItem(launcherAppWidgetProviderInfo, this.mIdp, this.mApp.mIconCache);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        throw new UnsupportedOperationException();
    }

    public final void logCommand(int i) {
        getUserEventDispatcher().dispatchUserEvent(LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(i), LoggerUtils.newItemTarget(this.mWidgetCell.mWidgetImage, this.mInstantAppResolver), LoggerUtils.newContainerTarget(10)), null);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        int intExtra = intent != null ? intent.getIntExtra("appWidgetId", this.mPendingBindWidgetId) : this.mPendingBindWidgetId;
        if (i2 == -1) {
            acceptWidget(intExtra);
        } else {
            this.mAppWidgetHost.deleteAppWidgetId(intExtra);
            this.mPendingBindWidgetId = -1;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        logCommand(1);
        super.onBackPressed();
    }

    public void onCancelClick(View view) {
        logCommand(3);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Parcelable parcelableExtra = getIntent().getParcelableExtra("android.content.pm.extra.PIN_ITEM_REQUEST");
        LauncherApps.PinItemRequest pinItemRequest = parcelableExtra instanceof LauncherApps.PinItemRequest ? (LauncherApps.PinItemRequest) parcelableExtra : null;
        this.mRequest = pinItemRequest;
        if (pinItemRequest == null) {
            finish();
            return;
        }
        LauncherAppState launcherAppState = LauncherAppState.getInstance(this);
        this.mApp = launcherAppState;
        this.mIdp = launcherAppState.mInvariantDeviceProfile;
        this.mInstantAppResolver = InstantAppResolver.newInstance(this);
        this.mDeviceProfile = this.mIdp.getDeviceProfile(getApplicationContext());
        setContentView(R.layout.add_item_confirmation_activity);
        this.mWidgetCell = (LivePreviewWidgetCell) findViewById(R.id.widget_cell);
        boolean z = false;
        if (this.mRequest.getRequestType() == 1) {
            final PinShortcutRequestActivityInfo pinShortcutRequestActivityInfo = new PinShortcutRequestActivityInfo(this.mRequest, this);
            this.mWidgetCell.mWidgetImage.setTag(new PendingAddShortcutInfo(pinShortcutRequestActivityInfo));
            final Supplier supplier = new Supplier() { // from class: c.a.a.H0.c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return AddItemActivity.this.a(pinShortcutRequestActivityInfo);
                }
            };
            new AsyncTask() { // from class: com.android.launcher3.dragndrop.AddItemActivity.2
                @Override // android.os.AsyncTask
                public Object doInBackground(Object[] objArr) {
                    return (WidgetItem) supplier.get();
                }

                @Override // android.os.AsyncTask
                public void onPostExecute(Object obj) {
                    AddItemActivity addItemActivity = AddItemActivity.this;
                    addItemActivity.mWidgetCell.applyFromCellItem((WidgetItem) obj, addItemActivity.mApp.mWidgetCache);
                    AddItemActivity.this.mWidgetCell.ensurePreview();
                }
            }.executeOnExecutor(Executors.MODEL_EXECUTOR, new Void[0]);
        } else {
            final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this, this.mRequest.getAppWidgetProviderInfo(this));
            int i = fromProviderInfo.minSpanX;
            InvariantDeviceProfile invariantDeviceProfile = this.mIdp;
            if (i <= invariantDeviceProfile.numColumns && fromProviderInfo.minSpanY <= invariantDeviceProfile.numRows) {
                this.mWidgetCell.mPreview = PinItemDragListener.getPreview(this.mRequest);
                this.mAppWidgetManager = new WidgetManagerHelper(this);
                this.mAppWidgetHost = new LauncherAppWidgetHost(this, null);
                PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(fromProviderInfo);
                pendingAddWidgetInfo.spanX = Math.min(this.mIdp.numColumns, fromProviderInfo.spanX);
                pendingAddWidgetInfo.spanY = Math.min(this.mIdp.numRows, fromProviderInfo.spanY);
                this.mWidgetOptions = WidgetHostViewLoader.getDefaultOptionsForWidget(this, pendingAddWidgetInfo);
                this.mWidgetCell.mWidgetImage.setTag(pendingAddWidgetInfo);
                final Supplier supplier2 = new Supplier() { // from class: c.a.a.H0.b
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return AddItemActivity.this.b(fromProviderInfo);
                    }
                };
                new AsyncTask() { // from class: com.android.launcher3.dragndrop.AddItemActivity.2
                    @Override // android.os.AsyncTask
                    public Object doInBackground(Object[] objArr) {
                        return (WidgetItem) supplier2.get();
                    }

                    @Override // android.os.AsyncTask
                    public void onPostExecute(Object obj) {
                        AddItemActivity addItemActivity = AddItemActivity.this;
                        addItemActivity.mWidgetCell.applyFromCellItem((WidgetItem) obj, addItemActivity.mApp.mWidgetCache);
                        AddItemActivity.this.mWidgetCell.ensurePreview();
                    }
                }.executeOnExecutor(Executors.MODEL_EXECUTOR, new Void[0]);
                z = true;
            }
            if (!z) {
                finish();
            }
        }
        this.mWidgetCell.setOnTouchListener(this);
        this.mWidgetCell.setOnLongClickListener(this);
        if (bundle == null) {
            logCommand(2);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        WidgetImageView widgetImageView = this.mWidgetCell.mWidgetImage;
        if (widgetImageView.mBitmap == null) {
            return false;
        }
        Rect bitmapBounds = widgetImageView.getBitmapBounds();
        bitmapBounds.offset(widgetImageView.getLeft() - ((int) this.mLastTouchPos.x), widgetImageView.getTop() - ((int) this.mLastTouchPos.y));
        PinItemDragListener pinItemDragListener = new PinItemDragListener(this.mRequest, bitmapBounds, widgetImageView.mBitmap.getWidth(), widgetImageView.getWidth());
        view.startDragAndDrop(new ClipData(new ClipDescription("", new String[]{pinItemDragListener.getMimeType()}), new ClipData.Item("")), new View.DragShadowBuilder(this, view) { // from class: com.android.launcher3.dragndrop.AddItemActivity.1
            @Override // android.view.View.DragShadowBuilder
            public void onDrawShadow(Canvas canvas) {
            }

            @Override // android.view.View.DragShadowBuilder
            public void onProvideShadowMetrics(Point point, Point point2) {
                point.set(10, 10);
                point2.set(5, 5);
            }
        }, null, 256);
        Intent flags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(getPackageName()).setFlags(268435456);
        Launcher.ACTIVITY_TRACKER.runCallbackWhenActivityExists(pinItemDragListener, flags);
        startActivity(flags, ActivityOptions.makeCustomAnimation(this, 0, android.R.anim.fade_out).toBundle());
        this.mFinishOnPause = true;
        return false;
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.mFinishOnPause) {
            finish();
        }
    }

    public void onPlaceAutomaticallyClick(View view) {
        if (this.mRequest.getRequestType() == 1) {
            InstallShortcutReceiver.queueShortcut(this.mRequest.getShortcutInfo(), this);
            logCommand(4);
            this.mRequest.accept();
            finish();
            return;
        }
        int allocateAppWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        this.mPendingBindWidgetId = allocateAppWidgetId;
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, this.mRequest.getAppWidgetProviderInfo(this), this.mWidgetOptions)) {
            acceptWidget(this.mPendingBindWidgetId);
        } else {
            this.mAppWidgetHost.startBindFlow(this, this.mPendingBindWidgetId, this.mRequest.getAppWidgetProviderInfo(this), 1);
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mPendingBindWidgetId = bundle.getInt("state.widget.id", this.mPendingBindWidgetId);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("state.widget.id", this.mPendingBindWidgetId);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.mLastTouchPos.set(motionEvent.getX(), motionEvent.getY());
        return false;
    }
}
