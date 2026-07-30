package com.android.quickstep.util;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Message;
import android.view.SurfaceControl;
import android.view.View;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import com.android.systemui.shared.system.TransactionCompat;
import com.android.systemui.shared.system.ViewRootImplCompat;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

@TargetApi(30)
/* loaded from: classes.dex */
public class SurfaceTransactionApplier extends RemoteAnimationTargets.ReleaseCheck {
    public static final int MSG_UPDATE_SEQUENCE_NUMBER = 0;
    public final Handler mApplyHandler;
    public final SurfaceControl mBarrierSurfaceControl;
    public int mLastSequenceNumber = 0;
    public final ViewRootImplCompat mTargetViewRootImpl;

    public SurfaceTransactionApplier(View view) {
        ViewRootImplCompat viewRootImplCompat = new ViewRootImplCompat(view);
        this.mTargetViewRootImpl = viewRootImplCompat;
        this.mBarrierSurfaceControl = viewRootImplCompat.getRenderSurfaceControl();
        this.mApplyHandler = new Handler(new Handler.Callback() { // from class: c.a.b.c2.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return SurfaceTransactionApplier.this.onApplyMessage(message);
            }
        });
    }

    public static void create(final View view, final Consumer consumer) {
        if (view == null) {
            consumer.accept(null);
        } else if (new ViewRootImplCompat(view).isValid()) {
            consumer.accept(new SurfaceTransactionApplier(view));
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.quickstep.util.SurfaceTransactionApplier.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    consumer.accept(new SurfaceTransactionApplier(view));
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    public /* synthetic */ void a(int i, SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr, long j) {
        SurfaceControl surfaceControl = this.mBarrierSurfaceControl;
        if (surfaceControl == null || !surfaceControl.isValid()) {
            Message.obtain(this.mApplyHandler, 0, i, 0).sendToTarget();
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        int length = surfaceParamsArr.length;
        while (true) {
            length--;
            if (length < 0) {
                transaction.apply();
                Message.obtain(this.mApplyHandler, 0, i, 0).sendToTarget();
                return;
            } else {
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams surfaceParams = surfaceParamsArr[length];
                if (surfaceParams.surface.isValid()) {
                    TransactionCompat.deferTransactionUntil(transaction, surfaceParams.surface, this.mBarrierSurfaceControl, j);
                    surfaceParams.applyTo(transaction);
                }
            }
        }
    }

    public boolean onApplyMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        setCanRelease(message.arg1 == this.mLastSequenceNumber);
        return true;
    }

    public void scheduleApply(final SyncRtSurfaceTransactionApplierCompat.SurfaceParams... surfaceParamsArr) {
        View view = this.mTargetViewRootImpl.getView();
        if (view == null) {
            return;
        }
        final int i = this.mLastSequenceNumber + 1;
        this.mLastSequenceNumber = i;
        setCanRelease(false);
        this.mTargetViewRootImpl.registerRtFrameCallback(new LongConsumer() { // from class: c.a.b.c2.j
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                SurfaceTransactionApplier.this.a(i, surfaceParamsArr, j);
            }
        });
        view.invalidate();
    }
}
