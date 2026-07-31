package net.newpipe.app.screen.about;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import net.newpipe.app.model.License;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.ResourceReaderKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LicenseDialogKt$LicenseDialog$3$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ License $license;
    final /* synthetic */ MutableState $licenseContent$delegate;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LicenseDialogKt$LicenseDialog$3$1(License license, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.$license = license;
        this.$licenseContent$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LicenseDialogKt$LicenseDialog$3$1(this.$license, this.$licenseContent$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LicenseDialogKt$LicenseDialog$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableState mutableState;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            MutableState mutableState2 = this.$licenseContent$delegate;
            String m = Modifier.CC.m("files/LICENSES/", this.$license.spdxID, ".txt");
            this.L$0 = mutableState2;
            this.label = 1;
            String concat = "composeResources/newpipe.shared.generated.resources/".concat(m);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ResourceReaderKt.LocalResourceReader;
            Object read = DefaultAndroidResourceReader.INSTANCE.read(concat);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (read == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = read;
            mutableState = mutableState2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableState = (MutableState) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        mutableState.setValue(StringsKt.lines(StringsKt__StringsJVMKt.decodeToString((byte[]) obj)));
        return Unit.INSTANCE;
    }
}
