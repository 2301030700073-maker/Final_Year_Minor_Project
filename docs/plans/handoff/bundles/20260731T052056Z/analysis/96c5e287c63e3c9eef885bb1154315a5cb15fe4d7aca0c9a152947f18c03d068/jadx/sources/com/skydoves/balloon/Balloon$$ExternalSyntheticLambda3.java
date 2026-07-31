package com.skydoves.balloon;

import android.content.Context;
import android.os.Handler;
import com.skydoves.balloon.BalloonPersistence;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Balloon$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Balloon f$0;

    public /* synthetic */ Balloon$$ExternalSyntheticLambda3(Balloon balloon, int i) {
        this.$r8$classId = i;
        this.f$0 = balloon;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Balloon balloon = this.f$0;
        switch (i) {
            case 0:
                return new AutoDismissRunnable(balloon);
            case 1:
                BalloonPersistence.Companion companion = BalloonPersistence.Companion;
                Context context = balloon.context;
                BalloonPersistence balloonPersistence = BalloonPersistence.instance;
                if (balloonPersistence == null) {
                    synchronized (companion) {
                        balloonPersistence = BalloonPersistence.instance;
                        if (balloonPersistence == null) {
                            balloonPersistence = new BalloonPersistence();
                            BalloonPersistence.instance = balloonPersistence;
                            context.getSharedPreferences("com.skydoves.balloon", 0).getClass();
                        }
                    }
                }
                return balloonPersistence;
            default:
                balloon.isShowing = false;
                balloon.bodyWindow.dismiss();
                balloon.overlayWindow.dismiss();
                ((Handler) balloon.handler$delegate.getValue()).removeCallbacks((AutoDismissRunnable) balloon.autoDismissRunnable$delegate.getValue());
                return Unit.INSTANCE;
        }
    }
}
