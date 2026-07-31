package com.fsck.k9;

import android.app.Activity;
import android.net.Uri;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ProduceStateScope;
import androidx.compose.ui.platform.ComposeView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.room.coroutines.Pool;
import androidx.window.layout.FoldingFeature$State;
import androidx.work.Constraints;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundUpdater;
import app.k9mail.autodiscovery.api.AutoDiscoveryRunnable;
import app.k9mail.feature.account.server.certificate.domain.usecase.AddServerCertificateException;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.settings.p000import.ui.OAuthFlowActivity;
import app.k9mail.feature.settings.p000import.ui.PickAppDialogFragment;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.activity.setup.AccountSetupCompositionViewModel;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.mail.ssl.LocalKeyStore;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.ui.endtoend.AutocryptSetupMessageLiveEvent;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.AboutFragment;
import com.fsck.k9.ui.settings.AboutViewModel;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$startListeningForEvents$1;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.Headers;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Preferences$getAccountFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $accountUuid;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Preferences$getAccountFlow$1(AddServerCertificateException addServerCertificateException, String str, int i, X509Certificate x509Certificate, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 16;
        this.L$0 = addServerCertificateException;
        this.$accountUuid = str;
        this.label = i;
        this.this$0 = x509Certificate;
    }

    private final Object invokeSuspend$app$k9mail$feature$account$server$certificate$domain$usecase$AddServerCertificateException$addCertificate$2(Object obj) {
        ResultKt.throwOnFailure(obj);
        LocalKeyStore localKeyStore = ((AddServerCertificateException) this.L$0).localKeyStore;
        String str = (String) this.$accountUuid;
        int i = this.label;
        X509Certificate x509Certificate = (X509Certificate) this.this$0;
        synchronized (localKeyStore) {
            str.getClass();
            KeyStore keyStore = (KeyStore) localKeyStore.keyStore$delegate.getValue();
            if (keyStore == null) {
                throw new CertificateException("Certificate not added because key store not initialized");
            }
            try {
                keyStore.setCertificateEntry(LocalKeyStore.getCertKey(str, i), x509Certificate);
                localKeyStore.writeCertificateFile();
            } catch (KeyStoreException e) {
                throw new CertificateException("Failed to add certificate to local key store", e);
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$accountUuid;
        switch (i) {
            case 0:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$1 = new Preferences$getAccountFlow$1((Preferences) this.this$0, (String) obj2, continuation, 0);
                preferences$getAccountFlow$1.L$0 = obj;
                return preferences$getAccountFlow$1;
            case 1:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$12 = new Preferences$getAccountFlow$1((CoroutineContext) this.this$0, (Flow) obj2, continuation, 1);
                preferences$getAccountFlow$12.L$0 = obj;
                return preferences$getAccountFlow$12;
            case 2:
                return new Preferences$getAccountFlow$1((BufferedChannel) obj2, continuation, 2);
            case 3:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$13 = new Preferences$getAccountFlow$1((DataStoreImpl) obj2, continuation, 3);
                preferences$getAccountFlow$13.L$0 = obj;
                return preferences$getAccountFlow$13;
            case 4:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$14 = new Preferences$getAccountFlow$1((DataStoreImpl) this.this$0, (Function2) obj2, continuation, 4);
                preferences$getAccountFlow$14.L$0 = obj;
                return preferences$getAccountFlow$14;
            case 5:
                return new Preferences$getAccountFlow$1((CoroutineContext) this.L$0, (Flow) this.this$0, (ProduceStateScope) obj2, continuation, 5);
            case 6:
                return new Preferences$getAccountFlow$1((SeekableTransitionState) this.L$0, (MutableState) this.this$0, (ParcelableSnapshotMutableFloatState) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Preferences$getAccountFlow$1((Ref$ObjectRef) this.this$0, (Pool) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$15 = new Preferences$getAccountFlow$1((CompletableDeferredImpl) this.this$0, (Function2) obj2, continuation, 8);
                preferences$getAccountFlow$15.L$0 = obj;
                return preferences$getAccountFlow$15;
            case 9:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$16 = new Preferences$getAccountFlow$1((FoldingFeature$State) this.this$0, (Activity) obj2, continuation, 9);
                preferences$getAccountFlow$16.L$0 = obj;
                return preferences$getAccountFlow$16;
            case 10:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$17 = new Preferences$getAccountFlow$1((Function2) this.this$0, (CallbackToFutureAdapter$Completer) obj2, continuation, 10);
                preferences$getAccountFlow$17.L$0 = obj;
                return preferences$getAccountFlow$17;
            case 11:
                return new Preferences$getAccountFlow$1((WorkerWrapper) this.L$0, (ListenableWorker) this.this$0, (WorkForegroundUpdater) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$18 = new Preferences$getAccountFlow$1((Constraints) this.this$0, (NetworkRequestConstraintController) obj2, continuation, 12);
                preferences$getAccountFlow$18.L$0 = obj;
                return preferences$getAccountFlow$18;
            case 13:
                return new Preferences$getAccountFlow$1((Headers.Builder) this.L$0, (WorkSpec) this.this$0, (OnConstraintsStateChangedListener) obj2, continuation, 13);
            case 14:
                return new Preferences$getAccountFlow$1((AutoDiscoveryRunnable) this.L$0, (Base64Util) this.this$0, (List) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new Preferences$getAccountFlow$1((UnidirectionalViewModel) this.L$0, continuation, (Function1) this.this$0, (ManagedActivityResultLauncher) obj2, 15);
            case 16:
                return new Preferences$getAccountFlow$1((AddServerCertificateException) this.L$0, (String) obj2, this.label, (X509Certificate) this.this$0, continuation);
            case 17:
                return new Preferences$getAccountFlow$1((ServerCertificateErrorViewModel) this.L$0, continuation, (Function0) this.this$0, (Function0) obj2, 17);
            case 18:
                return new Preferences$getAccountFlow$1((OAuthFlowActivity) this.L$0, (Flow) this.this$0, (ImageLoadKt$ImageLoad$1$1$1) obj2, continuation, 18);
            case 19:
                return new Preferences$getAccountFlow$1((PickAppDialogFragment) this.L$0, (Flow) this.this$0, (ImageLoadKt$ImageLoad$1$1$1) obj2, continuation, 19);
            case 20:
                return new Preferences$getAccountFlow$1((AccountSetupCompositionViewModel) this.L$0, continuation, (AccountSetupComposition) this.this$0, (MutableState) obj2, 20);
            case 21:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$19 = new Preferences$getAccountFlow$1((DefaultMessageCountsProvider) this.this$0, (LocalMessageSearch) obj2, continuation, 21);
                preferences$getAccountFlow$19.L$0 = obj;
                return preferences$getAccountFlow$19;
            case 22:
                return new Preferences$getAccountFlow$1((LifecycleOwner) this.L$0, (Flow) this.this$0, (FlowCollector) obj2, continuation, 22);
            case 23:
                return new Preferences$getAccountFlow$1((AppLanguageManager) this.L$0, (Locale) this.this$0, (Locale) obj2, continuation, 23);
            case 24:
                return new Preferences$getAccountFlow$1((AutocryptSetupMessageLiveEvent) this.L$0, (OpenPgpApi) this.this$0, (LegacyAccountDto) obj2, continuation, 24);
            case 25:
                return new Preferences$getAccountFlow$1((MessageViewFragment) this.this$0, (Uri) obj2, continuation, 25);
            case 26:
                return new Preferences$getAccountFlow$1((AboutViewModel) this.L$0, continuation, (AboutFragment) this.this$0, (ComposeView) obj2, 26);
            case 27:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$110 = new Preferences$getAccountFlow$1((SendChannel) this.this$0, obj2, continuation, 27);
                preferences$getAccountFlow$110.L$0 = obj;
                return preferences$getAccountFlow$110;
            case 28:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$111 = new Preferences$getAccountFlow$1((FlowCollector) this.this$0, (ChannelFlow) obj2, continuation, 28);
                preferences$getAccountFlow$111.L$0 = obj;
                return preferences$getAccountFlow$111;
            default:
                Preferences$getAccountFlow$1 preferences$getAccountFlow$112 = new Preferences$getAccountFlow$1((DraggableNode$startListeningForEvents$1) this.this$0, (DraggableNode) obj2, continuation, 29);
                preferences$getAccountFlow$112.L$0 = obj;
                return preferences$getAccountFlow$112;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((Preferences$getAccountFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((Preferences$getAccountFlow$1) create((ProduceStateScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((Preferences$getAccountFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((Preferences$getAccountFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((Preferences$getAccountFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 13:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 14:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case OffsetKt.Horizontal /* 15 */:
                ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 16:
                ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 17:
                ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 18:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 19:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 20:
                ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 21:
                return ((Preferences$getAccountFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 22:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 24:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 25:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 26:
                ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 27:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 28:
                return ((Preferences$getAccountFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((Preferences$getAccountFlow$1) create((DefaultDraggableState$dragScope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01da, code lost:
    
        if (r3.emit(r4, r18) == r2) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x027b, code lost:
    
        if (kotlin.ranges.RangesKt.awaitClose(r3, r0, r18) == r4) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x025d, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r3)._channel.send(r5, r18) == r4) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x057d, code lost:
    
        if (r11 == r10) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x074c, code lost:
    
        if (r2.collect(r3, r18) == r4) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x075b, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r3, r5, r18) == r4) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x08ad, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r18, r3, r5) != r4) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0853, code lost:
    
        if (r6 == r4) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x098c, code lost:
    
        if (r0.collect(r2, r18) == r3) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x099c, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext(r2, r5, r18) == r3) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0a07, code lost:
    
        if (kotlin.ranges.RangesKt.awaitClose(r4, r2, r18) == r5) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0a0a, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x09ea, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r4)._channel.send(r6, r18) == r5) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
    
        if (r0.emit(r3, r18) == r2) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x067c  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x091d A[Catch: all -> 0x08ef, TryCatch #8 {all -> 0x08ef, blocks: (B:465:0x08e9, B:467:0x0915, B:469:0x091d, B:470:0x092a, B:478:0x093b, B:480:0x0906, B:484:0x093e, B:488:0x0943, B:489:0x0944, B:496:0x0901, B:472:0x092b, B:474:0x0931), top: B:460:0x08dc, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0913  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0945  */
    /* JADX WARN: Type inference failed for: r0v77, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v4, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r3v6, types: [kotlinx.coroutines.channels.BufferedChannel] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v8, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:431:0x0911 -> B:417:0x0915). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 2634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.Preferences$getAccountFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountFlow$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.$accountUuid = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountFlow$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$accountUuid = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountFlow$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$accountUuid = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountFlow$1(UnidirectionalViewModel unidirectionalViewModel, Continuation continuation, Object obj, Object obj2, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = unidirectionalViewModel;
        this.this$0 = obj;
        this.$accountUuid = obj2;
    }
}
