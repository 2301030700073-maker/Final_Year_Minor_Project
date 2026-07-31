package androidx.activity;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.navigationevent.DirectNavigationEventInput;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda1(ComponentActivity componentActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = 1;
        ComponentActivity componentActivity = this.f$0;
        switch (i) {
            case 0:
                return new FullyDrawnReporter(componentActivity.reportFullyDrawnExecutor, new ComponentActivity$$ExternalSyntheticLambda1(componentActivity, i2));
            case 1:
                componentActivity.reportFullyDrawn();
                return Unit.INSTANCE;
            case 2:
                DirectNavigationEventInput directNavigationEventInput = new DirectNavigationEventInput();
                componentActivity.getNavigationEventDispatcher().addInput(directNavigationEventInput);
                return directNavigationEventInput;
            case 3:
                return new SavedStateViewModelFactory(componentActivity.getApplication(), componentActivity, componentActivity.getIntent() != null ? componentActivity.getIntent().getExtras() : null);
            default:
                OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new ComponentActivity$$ExternalSyntheticLambda0(componentActivity, 1));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                        componentActivity.lifecycleRegistry.addObserver(new ComponentActivity$$ExternalSyntheticLambda12(onBackPressedDispatcher, componentActivity));
                    } else {
                        new Handler(Looper.getMainLooper()).post(new Processor$$ExternalSyntheticLambda2(componentActivity, onBackPressedDispatcher, i2));
                    }
                }
                return onBackPressedDispatcher;
        }
    }
}
