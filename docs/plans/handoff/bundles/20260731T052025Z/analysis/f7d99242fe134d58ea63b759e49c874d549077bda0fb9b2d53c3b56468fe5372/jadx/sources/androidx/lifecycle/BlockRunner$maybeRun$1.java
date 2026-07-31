package androidx.lifecycle;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.MotionDurationScaleImpl;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback;
import androidx.compose.ui.viewinterop.BringIntoViewNode;
import androidx.compose.ui.window.PopupLayout;
import androidx.datastore.core.Data;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.core.Message$Update;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.coroutines.PooledConnectionImpl;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import app.k9mail.core.ui.compose.common.window.FoldableState;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.server.certificate.domain.entity.ServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountViewModel;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.settings.p000import.ui.AuthFlowState;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.eygraber.uri.Uri;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BlockRunner$maybeRun$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockRunner$maybeRun$1(LiveDataScopeImpl liveDataScopeImpl, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 14;
        this.this$0 = liveDataScopeImpl;
        this.L$0 = obj;
    }

    private final Object invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$login$1(Object obj) {
        Object value;
        AuthViewModel authViewModel = (AuthViewModel) this.L$0;
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.this$0;
                this.label = 1;
                Object access$startLogin = AuthViewModel.access$startLogin(authViewModel, legacyAccountDto, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (access$startLogin == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (ActivityNotFoundException e) {
            authViewModel.logger.error("AuthViewModel", e, new UtilsKt$$ExternalSyntheticLambda0(15));
            StateFlowImpl stateFlowImpl = authViewModel._uiState;
            do {
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, AuthFlowState.Idle.INSTANCE$1));
        }
        return Unit.INSTANCE;
    }

    private final Object invokeSuspend$app$k9mail$feature$settings$import$ui$OAuthFlowActivityKt$observe$1$1(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flow = (Flow) this.L$0;
            ImageLoadKt$ImageLoad$1$1$1 imageLoadKt$ImageLoad$1$1$1 = (ImageLoadKt$ImageLoad$1$1$1) this.this$0;
            this.label = 1;
            Object collect = flow.collect(imageLoadKt$ImageLoad$1$1$1, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (collect == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$1 = new BlockRunner$maybeRun$1((Uri.Builder) obj2, continuation, 0);
                blockRunner$maybeRun$1.L$0 = obj;
                return blockRunner$maybeRun$1;
            case 1:
                return new BlockRunner$maybeRun$1((StateFlow) this.L$0, (MotionDurationScaleImpl) obj2, continuation, 1);
            case 2:
                return new BlockRunner$maybeRun$1((Recomposer) this.L$0, (View) obj2, continuation, 2);
            case 3:
                return new BlockRunner$maybeRun$1((ComposeScrollCaptureCallback) this.L$0, (Runnable) obj2, continuation, 3);
            case 4:
                return new BlockRunner$maybeRun$1((BringIntoViewNode) this.L$0, (Rect) obj2, continuation, 4);
            case 5:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$12 = new BlockRunner$maybeRun$1((PopupLayout) obj2, continuation, 5);
                blockRunner$maybeRun$12.L$0 = obj;
                return blockRunner$maybeRun$12;
            case 6:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$13 = new BlockRunner$maybeRun$1((List) obj2, continuation, 6);
                blockRunner$maybeRun$13.L$0 = obj;
                return blockRunner$maybeRun$13;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new BlockRunner$maybeRun$1((DataStoreImpl) this.L$0, (Message$Update) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new BlockRunner$maybeRun$1((Function2) this.L$0, (Data) obj2, continuation, 8);
            case 9:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$14 = new BlockRunner$maybeRun$1((DataStoreImpl) obj2, continuation, 9);
                blockRunner$maybeRun$14.L$0 = obj;
                return blockRunner$maybeRun$14;
            case 10:
                return new BlockRunner$maybeRun$1((Dispatcher) obj2, continuation, 10);
            case 11:
                return new BlockRunner$maybeRun$1((Intent) this.L$0, (Context) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$15 = new BlockRunner$maybeRun$1((LiveData) obj2, continuation, 12);
                blockRunner$maybeRun$15.L$0 = obj;
                return blockRunner$maybeRun$15;
            case 13:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$16 = new BlockRunner$maybeRun$1((Flow) obj2, continuation, 13);
                blockRunner$maybeRun$16.L$0 = obj;
                return blockRunner$maybeRun$16;
            case 14:
                return new BlockRunner$maybeRun$1((LiveDataScopeImpl) obj2, this.L$0, continuation);
            case OffsetKt.Horizontal /* 15 */:
                return new BlockRunner$maybeRun$1((TriggerBasedInvalidationTracker) this.L$0, (Function0) obj2, continuation, 15);
            case 16:
                return new BlockRunner$maybeRun$1((Function2) this.L$0, (PooledConnectionImpl) obj2, continuation, 16);
            case 17:
                return new BlockRunner$maybeRun$1((Function2) this.L$0, (Ref$ObjectRef) obj2, continuation, 17);
            case 18:
                return new BlockRunner$maybeRun$1((NetworkRequestConstraintController) this.L$0, (ProducerScope) obj2, continuation, 18);
            case 19:
                BlockRunner$maybeRun$1 blockRunner$maybeRun$17 = new BlockRunner$maybeRun$1((BaseConstraintController) obj2, continuation, 19);
                blockRunner$maybeRun$17.L$0 = obj;
                return blockRunner$maybeRun$17;
            case 20:
                return new BlockRunner$maybeRun$1((FoldableStateObserver) this.L$0, (FoldableState) obj2, continuation, 20);
            case 21:
                return new BlockRunner$maybeRun$1((MutableInteractionSourceImpl) this.L$0, (Function0) obj2, continuation, 21);
            case 22:
                return new BlockRunner$maybeRun$1((AccountOAuthViewModel) this.L$0, (Intent) obj2, continuation, 22);
            case 23:
                return new BlockRunner$maybeRun$1((ServerCertificateErrorViewModel) this.L$0, (ServerCertificateError) obj2, continuation, 23);
            case 24:
                return new BlockRunner$maybeRun$1((CreateAccountViewModel) this.L$0, (AccountState) obj2, continuation, 24);
            case 25:
                return new BlockRunner$maybeRun$1((CreateAccountViewModel) this.L$0, (String) obj2, continuation, 25);
            case 26:
                return new BlockRunner$maybeRun$1((QrCodeScannerViewModel) this.L$0, (ArrayList) obj2, continuation, 26);
            case 27:
                return new BlockRunner$maybeRun$1((AuthViewModel) this.L$0, (LegacyAccountDto) obj2, continuation, 27);
            case 28:
                return new BlockRunner$maybeRun$1((Flow) this.L$0, (ImageLoadKt$ImageLoad$1$1$1) obj2, continuation, 28);
            default:
                return new BlockRunner$maybeRun$1((Flow) this.L$0, (ImageLoadKt$ImageLoad$1$1$1) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 1:
                ((BlockRunner$maybeRun$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 11:
                ((BlockRunner$maybeRun$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((BlockRunner$maybeRun$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((BlockRunner$maybeRun$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:346:0x0681, code lost:
    
        if (r6 != r2) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x068c, code lost:
    
        if (r4.invoke(r6, r26) == r2) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0792, code lost:
    
        if (r0 == r4) goto L369;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x074a, code lost:
    
        if (r0 == r4) goto L369;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x077a, code lost:
    
        if (androidx.datastore.core.DataStoreImpl.access$readAndInitOrPropagateAndThrowFailure(r2, r26) == r4) goto L369;
     */
    /* JADX WARN: Removed duplicated region for block: B:270:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x081a  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0835  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:302:0x068c -> B:296:0x0690). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:394:0x0809 -> B:382:0x080d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 2486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.BlockRunner$maybeRun$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BlockRunner$maybeRun$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BlockRunner$maybeRun$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
