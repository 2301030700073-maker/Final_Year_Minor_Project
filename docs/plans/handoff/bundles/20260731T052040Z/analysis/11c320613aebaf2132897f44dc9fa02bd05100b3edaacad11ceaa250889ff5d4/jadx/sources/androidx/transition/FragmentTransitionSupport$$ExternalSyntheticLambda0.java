package androidx.transition;

import android.util.Log;
import android.widget.TextView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.preference.Preference;
import androidx.work.DirectExecutor;
import androidx.work.ListenableFutureKt$launchFuture$1$2;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.settings.AppearanceSettingsFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FragmentTransitionSupport$$ExternalSyntheticLambda0 implements CallbackToFutureAdapter$Resolver, Preference.OnPreferenceChangeListener, Consumer {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ FragmentTransitionSupport$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3) {
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = obj3;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        TextView textView = (TextView) this.f$0;
        CharSequence charSequence = (CharSequence) this.f$2;
        java.util.function.Consumer consumer = (java.util.function.Consumer) this.f$1;
        Log.e("TextLinkifier", "Unable to linkify text", (Throwable) obj);
        textView.setText(charSequence);
        textView.setVisibility(0);
        if (consumer != null) {
            consumer.s(textView);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        CoroutineContext coroutineContext = (CoroutineContext) this.f$0;
        CoroutineStart coroutineStart = (CoroutineStart) this.f$2;
        Function2 function2 = (Function2) this.f$1;
        ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0 = new ReportExecutor$$ExternalSyntheticLambda0((Job) coroutineContext.get(Job.Key.$$INSTANCE), 10);
        ResolvableFuture resolvableFuture = callbackToFutureAdapter$Completer.cancellationFuture;
        if (resolvableFuture != null) {
            resolvableFuture.addListener(reportExecutor$$ExternalSyntheticLambda0, DirectExecutor.INSTANCE);
        }
        return JobKt.launch$default(JobKt.CoroutineScope(coroutineContext), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, callbackToFutureAdapter$Completer, null), 1);
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        AppearanceSettingsFragment appearanceSettingsFragment = (AppearanceSettingsFragment) this.f$0;
        String str = (String) this.f$2;
        String str2 = (String) this.f$1;
        int i = AppearanceSettingsFragment.$r8$clinit;
        appearanceSettingsFragment.applyThemeChange(str, str2, obj);
        return false;
    }

    public /* synthetic */ FragmentTransitionSupport$$ExternalSyntheticLambda0(Runnable runnable, Transition transition, Runnable runnable2) {
        this.f$0 = runnable;
        this.f$1 = transition;
        this.f$2 = runnable2;
    }
}
