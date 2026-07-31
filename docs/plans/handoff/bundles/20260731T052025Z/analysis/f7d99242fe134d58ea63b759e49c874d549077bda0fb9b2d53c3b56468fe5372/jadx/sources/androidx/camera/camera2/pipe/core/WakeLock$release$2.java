package androidx.camera.camera2.pipe.core;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import android.view.textclassifier.TextClassifier;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.impl.UseCaseCameraImpl$start$1$3;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.node.NodeChain;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.viewpager.widget.ViewPager;
import androidx.webkit.internal.ApiHelperForP;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import app.k9mail.K9App;
import app.k9mail.core.android.permissions.Permission;
import app.k9mail.core.android.permissions.PermissionState;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOptions;
import app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.util.Util;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import com.fsck.k9.Preferences;
import com.fsck.k9.account.AccountOwnerNameProvider;
import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.contacts.ContactImage;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.folders.FolderFetcherException;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.fsck.k9.mail.store.imap.ImapFolderFetcher;
import com.fsck.k9.mail.store.imap.ImapStore$Companion;
import com.fsck.k9.mail.store.imap.NegativeImapResponseException;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import j$.util.DesugarCollections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.feature.changelog.internal.ChangeLogManager;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$Effect$DismissDialog;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WakeLock$release$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WakeLock$release$2(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new WakeLock$release$2((NodeChain.Differ) obj2, continuation, 0);
            case 1:
                return new WakeLock$release$2((SessionConfig) obj2, continuation, 1);
            case 2:
                return new WakeLock$release$2(continuation, (DeferredUseCaseCameraRequestControl) obj2, 2);
            case 3:
                return new WakeLock$release$2(continuation, (UseCaseCameraImpl) obj2, 3);
            case 4:
                return new WakeLock$release$2((CaptureSessionState) obj2, continuation, 4);
            case 5:
                return new WakeLock$release$2((Ref$ObjectRef) obj2, continuation, 5);
            case 6:
                return new WakeLock$release$2((PlatformSelectionBehaviorsImpl) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new WakeLock$release$2((TooltipStateImpl) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new WakeLock$release$2((WorkSpec) obj2, continuation, 8);
            case 9:
                return new WakeLock$release$2((GetSpecialFolderOptions) obj2, continuation, 9);
            case 10:
                return new WakeLock$release$2((PermissionsViewModel) obj2, continuation, 10);
            case 11:
                return new WakeLock$release$2((AccountOwnerNameProvider) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new WakeLock$release$2((Address) obj2, continuation, 12);
            case 13:
                return new WakeLock$release$2((DefaultGeneralSettingsManager) obj2, continuation, 13);
            case 14:
                return new WakeLock$release$2((SettingsExportViewModel) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new WakeLock$release$2((K9App) obj2, continuation, 15);
            case 16:
                return new WakeLock$release$2((ChangeLogManager) obj2, continuation, 16);
            case 17:
                return new WakeLock$release$2((GetSortCriteriaPerAccount) obj2, continuation, 17);
            default:
                return new WakeLock$release$2((SetupArchiveFolderDialogViewModel) obj2, continuation, 18);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 1:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 2:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 3:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 4:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 5:
                ((WakeLock$release$2) create((Unit) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 6:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((WakeLock$release$2) create((ConstraintsState) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 9:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 13:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 14:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case OffsetKt.Horizontal /* 15 */:
                ((WakeLock$release$2) create((Locale) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 16:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 17:
                return ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((WakeLock$release$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v21, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v66, types: [com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SessionConfig.ErrorListener errorListener;
        RealOAuth2TokenProviderFactory realOAuth2TokenProviderFactory;
        Object value;
        int i = 26;
        ?? r5 = 0;
        Object obj2 = null;
        switch (this.$r8$classId) {
            case 0:
                ResultKt.throwOnFailure(obj);
                ((Recomposer$$ExternalSyntheticLambda6) ((NodeChain.Differ) this.this$0).before).invoke();
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                SessionConfig sessionConfig = (SessionConfig) this.this$0;
                if (sessionConfig != null && (errorListener = sessionConfig.mErrorListener) != null) {
                    errorListener.onError(sessionConfig);
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = ((DeferredUseCaseCameraRequestControl) this.this$0).impl;
                if (useCaseCameraRequestControlImpl != null) {
                    useCaseCameraRequestControlImpl.close();
                }
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                if (!((UseCaseCameraImpl) this.this$0).closed.getValue()) {
                    CameraGraphImpl graph = ((UseCaseCameraImpl) this.this$0).useCaseGraphContext.getGraph();
                    UseCaseGraphContext useCaseGraphContext = ((UseCaseCameraImpl) this.this$0).useCaseGraphContext;
                    useCaseGraphContext.graphStateToCameraStateAdapter.cameraGraph = useCaseGraphContext.getGraph();
                    CameraStateAdapter cameraStateAdapter = useCaseGraphContext.cameraStateAdapter;
                    CameraGraphImpl graph2 = useCaseGraphContext.getGraph();
                    synchronized (cameraStateAdapter.lock) {
                        try {
                            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                Log.d("CXCP", "Camera graph updated from " + cameraStateAdapter.currentGraph + " to " + graph2);
                            }
                            CameraInternal.State state = cameraStateAdapter.currentCameraInternalState;
                            CameraInternal.State state2 = CameraInternal.State.CLOSED;
                            if (state != state2) {
                                cameraStateAdapter.postCameraState(CameraInternal.State.CLOSING, null);
                                cameraStateAdapter.postCameraState(state2, null);
                            }
                            cameraStateAdapter.currentGraph = graph2;
                            cameraStateAdapter.currentCameraInternalState = state2;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    graph.start();
                    Map map = (Map) ((UseCaseCameraImpl) this.this$0).useCaseGraphContext.surfaceToStreamMap$delegate.getValue();
                    UseCaseCameraImpl useCaseCameraImpl = (UseCaseCameraImpl) this.this$0;
                    SessionConfigAdapter sessionConfigAdapter = (SessionConfigAdapter) useCaseCameraImpl.sessionConfigAdapter$delegate.getValue();
                    SessionConfig sessionConfig2 = ((SessionConfig.ValidatingBuilder) sessionConfigAdapter.validatingBuilder$delegate.getValue()).isValid() ? (SessionConfig) sessionConfigAdapter.sessionConfig$delegate.getValue() : null;
                    if (sessionConfig2 != null) {
                        List unmodifiableList = DesugarCollections.unmodifiableList(sessionConfig2.mRepeatingCaptureConfig.mSurfaces);
                        unmodifiableList.getClass();
                        List surfaces = sessionConfig2.getSurfaces();
                        surfaces.getClass();
                        Iterator it = surfaces.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                Object next = it.next();
                                if (!unmodifiableList.contains((DeferrableSurface) next)) {
                                    r5 = next;
                                }
                            }
                        }
                        DeferrableSurface deferrableSurface = (DeferrableSurface) r5;
                        if (deferrableSurface != null) {
                        }
                    }
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "Setting up Surfaces with UseCaseSurfaceManager");
                    }
                    if (((SessionConfig.ValidatingBuilder) ((SessionConfigAdapter) ((UseCaseCameraImpl) this.this$0).sessionConfigAdapter$delegate.getValue()).validatingBuilder$delegate.getValue()).isValid()) {
                        UseCaseSurfaceManager useCaseSurfaceManager = (UseCaseSurfaceManager) ((UseCaseCameraImpl) this.this$0).useCaseSurfaceManager$delegate.getValue();
                        useCaseSurfaceManager.getClass();
                        SessionConfigAdapter sessionConfigAdapter2 = (SessionConfigAdapter) ((UseCaseCameraImpl) this.this$0).sessionConfigAdapter$delegate.getValue();
                        sessionConfigAdapter2.getClass();
                        ((JobSupport) UseCaseSurfaceManager.setupAsync$default(useCaseSurfaceManager, graph, sessionConfigAdapter2, map)).invokeOnCompletion(UseCaseCameraImpl$start$1$3.INSTANCE);
                    } else if (Utf8.SafeProcessor.isErrorEnabled()) {
                        Log.e("CXCP", "Unable to create capture session due to conflicting configurations");
                    }
                } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "UseCaseCamera is closed before starting the CameraGraph, skipping setup.");
                }
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                ((CaptureSessionState) this.this$0).finalizeOutputsIfAvailable(true);
                return Unit.INSTANCE;
            case 5:
                ResultKt.throwOnFailure(obj);
                ((Ref$ObjectRef) this.this$0).element = null;
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj);
                PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.this$0;
                TextClassifier createTextClassificationSession = ApiHelperForP.createTextClassificationSession(platformSelectionBehaviorsImpl.context, platformSelectionBehaviorsImpl.selectedTextType);
                platformSelectionBehaviorsImpl.textClassificationSession = createTextClassificationSession;
                return createTextClassificationSession;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ResultKt.throwOnFailure(obj);
                ((TooltipStateImpl) this.this$0).dismiss();
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ResultKt.throwOnFailure(obj);
                String str = ConstraintTrackingWorkerKt.TAG;
                WorkSpec workSpec = (WorkSpec) this.this$0;
                Logger$LogcatLogger.get().debug(str, "Constraints changed for " + workSpec);
                return Unit.INSTANCE;
            case 9:
                ResultKt.throwOnFailure(obj);
                GetSpecialFolderOptions getSpecialFolderOptions = (GetSpecialFolderOptions) this.this$0;
                ServerSettings serverSettings = ((InMemoryAccountStateRepository) getSpecialFolderOptions.accountStateRepository).state.incomingServerSettings;
                if (serverSettings == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No incoming server settings available");
                    return null;
                }
                ImapFolderFetcher imapFolderFetcher = getSpecialFolderOptions.folderFetcher;
                AuthStateStorage authStateStorage = getSpecialFolderOptions.authStateStorage;
                imapFolderFetcher.getClass();
                if (!Intrinsics.areEqual(serverSettings.type, "imap")) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                    return null;
                }
                Configuration.Builder builder = new Configuration.Builder(i, imapFolderFetcher);
                LocalFolder.AnonymousClass12 anonymousClass12 = (authStateStorage == null || (realOAuth2TokenProviderFactory = imapFolderFetcher.oAuth2TokenProviderFactory) == null) ? null : new LocalFolder.AnonymousClass12(realOAuth2TokenProviderFactory.context, authStateStorage);
                ImapStore$Companion imapStore$Companion = imapFolderFetcher.imapStoreFactory;
                DefaultTrustedSocketFactory defaultTrustedSocketFactory = imapFolderFetcher.trustedSocketFactory;
                imapStore$Companion.getClass();
                defaultTrustedSocketFactory.getClass();
                RealImapStore realImapStore = new RealImapStore(serverSettings, builder, defaultTrustedSocketFactory, anonymousClass12);
                try {
                    try {
                        List list = SequencesKt.toList(new TakeWhileSequence(CollectionsKt.asSequence(realImapStore.getFolders()), new KoinModuleKt$$ExternalSyntheticLambda0(9), 2));
                        realImapStore.closeAllConnections();
                        ViewPager.AnonymousClass1 anonymousClass1 = new ViewPager.AnonymousClass1(12);
                        String.CASE_INSENSITIVE_ORDER.getClass();
                        List sortedWith = CollectionsKt.sortedWith(list, new PreferenceParser.AnonymousClass1(5, anonymousClass1));
                        return new SpecialFolderOptions(GetSpecialFolderOptions.access$mapByFolderType(getSpecialFolderOptions, FolderType.ARCHIVE, sortedWith), GetSpecialFolderOptions.access$mapByFolderType(getSpecialFolderOptions, FolderType.DRAFTS, sortedWith), GetSpecialFolderOptions.access$mapByFolderType(getSpecialFolderOptions, FolderType.SENT, sortedWith), GetSpecialFolderOptions.access$mapByFolderType(getSpecialFolderOptions, FolderType.SPAM, sortedWith), GetSpecialFolderOptions.access$mapByFolderType(getSpecialFolderOptions, FolderType.TRASH, sortedWith));
                    } catch (AuthenticationFailedException e) {
                        throw new FolderFetcherException(e, e.messageFromServer);
                    } catch (NegativeImapResponseException e2) {
                        throw new FolderFetcherException(e2, (String) e2.responseText$delegate.getValue());
                    } catch (Exception e3) {
                        throw new FolderFetcherException(e3, null);
                    }
                } catch (Throwable th2) {
                    realImapStore.closeAllConnections();
                    throw th2;
                }
            case 10:
                ResultKt.throwOnFailure(obj);
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) this.this$0;
                return new PermissionState[]{permissionsViewModel.checkPermission.invoke(Permission.Contacts), permissionsViewModel.checkPermission.invoke(Permission.Notifications)};
            case 11:
                ResultKt.throwOnFailure(obj);
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) CollectionsKt.firstOrNull(((AccountOwnerNameProvider) this.this$0).preferences.getAccounts());
                if (legacyAccountDto != null) {
                    return legacyAccountDto.getSenderName();
                }
                return null;
            case BasicTextKt.ShiftMeta /* 12 */:
                ResultKt.throwOnFailure(obj);
                ContactPictureLoader contactPictureLoader = (ContactPictureLoader) CloseableKt.get$default(ContactPictureLoader.class);
                Address address = (Address) this.this$0;
                int i2 = contactPictureLoader.pictureSizeInPx;
                ?? r13 = (RequestBuilder) ((RequestBuilder) Glide.with(contactPictureLoader.context).asBitmap().load(new ContactImage(true, contactPictureLoader.backgroundCacheId, contactPictureLoader.contactLetterBitmapCreator, address)).diskCacheStrategy(DiskCacheStrategy$2.NONE)).dontAnimate();
                r13.getClass();
                RequestFutureTarget requestFutureTarget = new RequestFutureTarget(i2, i2);
                r13.into(requestFutureTarget, requestFutureTarget, r13, Util.DIRECT_EXECUTOR);
                try {
                    obj2 = requestFutureTarget.get();
                } catch (Exception unused) {
                }
                return (Bitmap) obj2;
            case 13:
                ResultKt.throwOnFailure(obj);
                DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.this$0;
                GeneralSettings config = defaultGeneralSettingsManager.getConfig();
                config.getClass();
                JobKt.launch$default(defaultGeneralSettingsManager.coroutineScope, defaultGeneralSettingsManager.backgroundDispatcher, null, new NavHostKt$NavHost$25$1(defaultGeneralSettingsManager, config, (Continuation) r5, 16), 2);
                return Unit.INSTANCE;
            case 14:
                ResultKt.throwOnFailure(obj);
                return ((Preferences) ((SettingsExportViewModel) this.this$0).accountManager).getAccounts();
            case OffsetKt.Horizontal /* 15 */:
                ResultKt.throwOnFailure(obj);
                NotificationChannelManager notificationChannelManager = (NotificationChannelManager) ((K9App) this.this$0).notificationChannelManager$delegate.getValue();
                if (Build.VERSION.SDK_INT < 26) {
                    notificationChannelManager.getClass();
                } else {
                    notificationChannelManager.backgroundExecutor.execute(new Fragment$$ExternalSyntheticLambda0(6, notificationChannelManager));
                }
                return Unit.INSTANCE;
            case 16:
                ResultKt.throwOnFailure(obj);
                Object value2 = ((ChangeLogManager) this.this$0).changeLog$delegate.getValue();
                value2.getClass();
                return Unit.INSTANCE;
            case 17:
                ResultKt.throwOnFailure(obj);
                return ((GetSortCriteriaPerAccount) this.this$0).accountManager.getAccounts();
            default:
                ResultKt.throwOnFailure(obj);
                SetupArchiveFolderDialogViewModel setupArchiveFolderDialogViewModel = (SetupArchiveFolderDialogViewModel) this.this$0;
                GeneralSettingsManager generalSettingsManager = setupArchiveFolderDialogViewModel.generalSettingsManager;
                GeneralSettings config2 = ((DefaultGeneralSettingsManager) generalSettingsManager).getConfig();
                DisplaySettings displaySettings = config2.display;
                DisplayMiscSettings displayMiscSettings = displaySettings.miscSettings;
                boolean z = !((SetupArchiveFolderDialogContract$State) setupArchiveFolderDialogViewModel.state.$$delegate_0.getValue()).isDoNotShowDialogAgainChecked();
                boolean z2 = displayMiscSettings.showRecentChanges;
                displayMiscSettings.getClass();
                ((DefaultGeneralSettingsManager) generalSettingsManager).save(GeneralSettings.copy$default(config2, null, null, DisplaySettings.copy$default(displaySettings, null, null, null, new DisplayMiscSettings(z2, z), 7), null, null, null, 119));
                StateFlowImpl stateFlowImpl = setupArchiveFolderDialogViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, new SetupArchiveFolderDialogContract$State.Closed(false)));
                setupArchiveFolderDialogViewModel.emitEffect(SetupArchiveFolderDialogContract$Effect$DismissDialog.INSTANCE);
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WakeLock$release$2(Continuation continuation, Object obj, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
