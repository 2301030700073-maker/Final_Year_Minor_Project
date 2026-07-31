package app.k9mail.featureflag;

import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.featureflag.FeatureFlag;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9FeatureFlagFactory$getCatalog$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ K9FeatureFlagFactory$getCatalog$1(int i, Continuation continuation, int i2) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                K9FeatureFlagFactory$getCatalog$1 k9FeatureFlagFactory$getCatalog$1 = new K9FeatureFlagFactory$getCatalog$1(2, continuation, 0);
                k9FeatureFlagFactory$getCatalog$1.L$0 = obj;
                return k9FeatureFlagFactory$getCatalog$1;
            default:
                K9FeatureFlagFactory$getCatalog$1 k9FeatureFlagFactory$getCatalog$12 = new K9FeatureFlagFactory$getCatalog$1(2, continuation, 1);
                k9FeatureFlagFactory$getCatalog$12.L$0 = obj;
                return k9FeatureFlagFactory$getCatalog$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((K9FeatureFlagFactory$getCatalog$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((K9FeatureFlagFactory$getCatalog$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        CoroutineScope coroutineScope;
        int i = this.$r8$classId;
        Unit unit2 = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = 1;
        switch (i) {
            case 0:
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    unit = unit2;
                    List listOf = IntOffsetKt.listOf((Object[]) new FeatureFlag[]{new FeatureFlag("archive_marks_as_read", true), new FeatureFlag("disable_font_size_config", true), new FeatureFlag("email_notification_default", true), new FeatureFlag("display_in_app_notifications", false), new FeatureFlag("use_notification_sender_for_system_notifications", false), new FeatureFlag("use_compose_for_message_list_items", false), new FeatureFlag("message_view_action_export_eml", false), new FeatureFlag("enable_avatar_customization", true), new FeatureFlag("use_new_message_reader_css_styles", true), new FeatureFlag("enable_message_list_new_state", false), new FeatureFlag("use_compose_for_message_reader", false), new FeatureFlag("thundermail_onboarding_enabled", true)});
                    this.L$0 = null;
                    this.label = 1;
                    if (flowCollector.emit(listOf, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    unit = unit2;
                }
                return unit;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                while (JobKt.isActive(coroutineScope.getCoroutineContext())) {
                    ScrollState$$ExternalSyntheticLambda4 scrollState$$ExternalSyntheticLambda4 = new ScrollState$$ExternalSyntheticLambda4(i2);
                    this.L$0 = coroutineScope;
                    this.label = 1;
                    if (Updater.getMonotonicFrameClock(getContext()).withFrameNanos(scrollState$$ExternalSyntheticLambda4, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return unit2;
        }
    }
}
