package androidx.activity;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.navigationevent.DirectNavigationEventInput;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda1(AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = 1;
        AppCompatActivity appCompatActivity = this.f$0;
        switch (i) {
            case 0:
                return new FullyDrawnReporter(appCompatActivity.reportFullyDrawnExecutor, new ComponentActivity$$ExternalSyntheticLambda1(appCompatActivity, i2));
            case 1:
                appCompatActivity.reportFullyDrawn();
                return Unit.INSTANCE;
            case 2:
                DirectNavigationEventInput directNavigationEventInput = new DirectNavigationEventInput();
                appCompatActivity.getNavigationEventDispatcher().addInput(directNavigationEventInput);
                return directNavigationEventInput;
            case 3:
                return new SavedStateViewModelFactory(appCompatActivity.getApplication(), appCompatActivity, appCompatActivity.getIntent() != null ? appCompatActivity.getIntent().getExtras() : null);
            default:
                OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new ComponentActivity$$ExternalSyntheticLambda0(appCompatActivity, i2));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                        appCompatActivity.lifecycleRegistry.addObserver(new MenuHostHelper$$ExternalSyntheticLambda0(i2, onBackPressedDispatcher, appCompatActivity));
                    } else {
                        new Handler(Looper.getMainLooper()).post(new CameraX$$ExternalSyntheticLambda2(i2, appCompatActivity, onBackPressedDispatcher));
                    }
                }
                return onBackPressedDispatcher;
        }
    }
}
