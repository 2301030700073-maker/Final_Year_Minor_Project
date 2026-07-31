package com.fsck.k9;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;
import androidx.work.Configuration;
import app.k9mail.core.ui.compose.common.window.FoldableState;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.ImageLoader;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.DecodeResult;
import coil3.disk.DiskCache;
import coil3.gif.GifDecoder;
import coil3.network.NetworkClient;
import coil3.network.okhttp.OkHttpNetworkFetcher;
import coil3.request.ImageRequest;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.backend.imap.ImapFolderPusher;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mail.store.imap.RealImapFolderIdler;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.notification.PushNotificationManager;
import com.fsck.k9.power.AndroidPowerManager;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import com.skydoves.landscapist.DrawablePainter;
import com.skydoves.landscapist.DrawablePainter$callback$2$1;
import com.skydoves.landscapist.coil3.CoilImageKt;
import com.skydoves.landscapist.crossfade.FadeInEffectNode;
import com.skydoves.landscapist.crossfade.FadeOutEffectNode;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.internal.TuplesKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.cache.TimeLimitedCache;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import okhttp3.Call;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Huffman;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class K9$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ K9$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        DecodeResult decode$lambda$0$0;
        DecodeResult decode$lambda$0;
        DiskCache diskCache;
        NetworkClient asNetworkClient;
        Object value;
        ImageRequest CoilImage$lambda$2$0;
        int i = this.$r8$classId;
        int i2 = 1;
        int i3 = 0;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                InMemoryStorage inMemoryStorage = (InMemoryStorage) obj;
                FontSizes fontSizes = K9.fontSizes;
                fontSizes.getClass();
                fontSizes.messageListSubject = inMemoryStorage.getInt("fontSizeMessageListSubject", fontSizes.messageListSubject);
                fontSizes.messageListSender = inMemoryStorage.getInt("fontSizeMessageListSender", fontSizes.messageListSender);
                fontSizes.messageListDate = inMemoryStorage.getInt("fontSizeMessageListDate", fontSizes.messageListDate);
                fontSizes.messageListPreview = inMemoryStorage.getInt("fontSizeMessageListPreview", fontSizes.messageListPreview);
                fontSizes.messageViewAccountName = inMemoryStorage.getInt("fontSizeMessageViewAccountName", fontSizes.messageViewAccountName);
                fontSizes.messageViewSender = inMemoryStorage.getInt("fontSizeMessageViewSender", fontSizes.messageViewSender);
                fontSizes.messageViewRecipients = inMemoryStorage.getInt("fontSizeMessageViewTo", fontSizes.messageViewRecipients);
                fontSizes.messageViewSubject = inMemoryStorage.getInt("fontSizeMessageViewSubject", fontSizes.messageViewSubject);
                fontSizes.messageViewDate = inMemoryStorage.getInt("fontSizeMessageViewDate", fontSizes.messageViewDate);
                fontSizes.messageViewContentAsPercent = inMemoryStorage.getInt("fontSizeMessageViewContentPercent", 100);
                fontSizes.messageComposeInput = inMemoryStorage.getInt("fontSizeMessageComposeInput", fontSizes.messageComposeInput);
                return Unit.INSTANCE;
            case 1:
                decode$lambda$0$0 = BitmapFactoryDecoder.decode$lambda$0$0((BitmapFactoryDecoder) obj);
                return decode$lambda$0$0;
            case 2:
                decode$lambda$0 = GifDecoder.decode$lambda$0((GifDecoder) obj);
                return decode$lambda$0;
            case 3:
                diskCache = ((ImageLoader) obj).getDiskCache();
                return diskCache;
            case 4:
                asNetworkClient = OkHttpNetworkFetcher.asNetworkClient((Call.Factory) obj);
                return asNetworkClient;
            case 5:
                int i4 = ((Huffman.Node) obj).symbol;
                byte[] bArr = new byte[i4];
                for (int i5 = 0; i5 < i4; i5++) {
                    bArr[i5] = 0;
                }
                return bArr;
            case 6:
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                return "Handling foldable state change: " + ((FoldableState) obj);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "onNotificationActionClick() called with: action = " + ((NotificationAction) obj);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int i6 = AccountSetupComposition.$r8$clinit;
                String stringExtra = ((AccountSetupComposition) obj).getIntent().getStringExtra("account");
                if (stringExtra != null) {
                    return Options.Companion.parametersOf(stringExtra);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing account UUID");
                return null;
            case 9:
                ImapFolderPusher imapFolderPusher = (ImapFolderPusher) obj;
                Log.v("Starting ImapFolderPusher thread for %s / %s", imapFolderPusher.accountName, imapFolderPusher.folderServerId);
                AndroidPowerManager androidPowerManager = imapFolderPusher.powerManager;
                String str = "ImapFolderPusher-" + imapFolderPusher.accountName + "-" + imapFolderPusher.folderServerId;
                androidPowerManager.getClass();
                AndroidPowerManager.AndroidWakeLock androidWakeLock = new AndroidPowerManager.AndroidWakeLock(androidPowerManager, str);
                androidWakeLock.acquire();
                imapFolderPusher.callback.onPushEvent(imapFolderPusher.folderServerId);
                IdleRefreshManager idleRefreshManager = imapFolderPusher.idleRefreshManager;
                RealImapStore realImapStore = imapFolderPusher.imapStore;
                String str2 = imapFolderPusher.folderServerId;
                Configuration.Builder builder = imapFolderPusher.idleRefreshTimeoutProvider;
                idleRefreshManager.getClass();
                realImapStore.getClass();
                str2.getClass();
                builder.getClass();
                RealImapFolderIdler realImapFolderIdler = new RealImapFolderIdler(idleRefreshManager, androidWakeLock, realImapStore, str2, builder);
                imapFolderPusher.folderIdler = realImapFolderIdler;
                while (!imapFolderPusher.stopPushing) {
                    try {
                        int ordinal = realImapFolderIdler.idle().ordinal();
                        if (ordinal == 0) {
                            imapFolderPusher.callback.onPushEvent(imapFolderPusher.folderServerId);
                        } else if (ordinal == 1) {
                            imapFolderPusher.stopPushing = true;
                        } else {
                            if (ordinal != 2) {
                                throw new SerializationException();
                            }
                            imapFolderPusher.stopPushing = true;
                            LocalStore.AnonymousClass7 anonymousClass7 = imapFolderPusher.callback.callback;
                            Sink$CC.verbose$default((Logger) anonymousClass7.this$0, "AccountBackendPusherCallback", null, new K9$$ExternalSyntheticLambda0(11, anonymousClass7), 2);
                            ((DefaultFolderRepository) anonymousClass7.val$folder).messageStoreManager.getMessageStore((AccountId) anonymousClass7.val$messages).setPushDisabled();
                        }
                    } catch (Exception e) {
                        Log.v(e, "Exception in ImapFolderPusher", new Object[0]);
                        imapFolderPusher.folderIdler = null;
                        ImapBackendPusher imapBackendPusher = imapFolderPusher.callback;
                        String str3 = imapFolderPusher.folderServerId;
                        str3.getClass();
                        synchronized (imapBackendPusher.lock) {
                            try {
                                imapBackendPusher.pushFolders.remove(str3);
                                if (e instanceof AuthenticationFailedException) {
                                    Log.v(e, "Authentication failure when attempting to use IDLE", new Object[0]);
                                    imapBackendPusher.startRetryTimer(3600000L, str3);
                                } else if (e instanceof IOException) {
                                    Log.v(e, "I/O error while trying to use IDLE", new Object[0]);
                                    imapBackendPusher.startRetryTimer(300000L, str3);
                                } else if (e instanceof MessagingException) {
                                    Log.v(e, "MessagingException", new Object[0]);
                                    if (((MessagingException) e).isPermanentFailure) {
                                        imapBackendPusher.startRetryTimer(3600000L, str3);
                                    } else {
                                        imapBackendPusher.startRetryTimer(300000L, str3);
                                    }
                                } else {
                                    Log.v(e, "Unexpected error", new Object[0]);
                                    imapBackendPusher.startRetryTimer(3600000L, str3);
                                }
                                if (imapBackendPusher.pushFolders.isEmpty()) {
                                    LocalStore.AnonymousClass7 anonymousClass72 = imapBackendPusher.callback;
                                    anonymousClass72.getClass();
                                    LegacyAccountDto account = ((Preferences) ((LegacyAccountDtoManager) anonymousClass72.val$queryString)).getAccount(((AccountId) anonymousClass72.val$messages).value.toString());
                                    MessagingController messagingController = (MessagingController) anonymousClass72.val$placeHolders;
                                    if (e instanceof AuthenticationFailedException) {
                                        messagingController.handleAuthenticationFailure(account, true);
                                    } else {
                                        messagingController.notifyUserIfCertificateProblem(account, e, true);
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
                androidWakeLock.release();
                Log.v("Exiting ImapFolderPusher thread for %s / %s", imapFolderPusher.accountName, imapFolderPusher.folderServerId);
                return Unit.INSTANCE;
            case 10:
                return ((MessagingException) obj).message;
            case 11:
                return "Push not supported for account " + ((AccountId) ((LocalStore.AnonymousClass7) obj).val$messages) + ". Disabling push.";
            case BasicTextKt.ShiftMeta /* 12 */:
                TimeLimitedCache.Entry entry = (TimeLimitedCache.Entry) obj;
                return "getOutboxFolderId: Found Outbox folder with id = " + entry.value + " in cache. Cache expires on " + entry.expiresAt;
            case 13:
                ((PushNotificationManager) obj).getClass();
                return "Failed to post updated notification for 1";
            case 14:
                int i7 = ChooseFolderActivity.$r8$clinit;
                return Options.Companion.parametersOf(((ChooseFolderActivity) obj).getTheme());
            case OffsetKt.Horizontal /* 15 */:
                AutocryptKeyTransferActivity autocryptKeyTransferActivity = (AutocryptKeyTransferActivity) obj;
                int i8 = AutocryptKeyTransferActivity.$r8$clinit;
                return Options.Companion.parametersOf(autocryptKeyTransferActivity, autocryptKeyTransferActivity);
            case 16:
                return Options.Companion.parametersOf(((ManageFoldersFragment) obj).requireActivity().getTheme());
            case 17:
                return Options.Companion.parametersOf(((MessageDetailsFragment) obj).requireContext().getTheme());
            case 18:
                return Options.Companion.parametersOf(((LegacyMessageListFragment) obj).requireContext());
            case 19:
                StateFlowImpl stateFlowImpl = ((MessageViewFragment) obj).attachmentListBottomSheetState;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, SmallPersistentVector.EMPTY));
                return Unit.INSTANCE;
            case 20:
                GeneralSettingsFragment generalSettingsFragment = (GeneralSettingsFragment) obj;
                int i9 = GeneralSettingsFragment.$r8$clinit;
                PreferenceCategory preferenceCategory = (PreferenceCategory) generalSettingsFragment.findPreference("global_preferences");
                PreferenceScreen preferenceScreen = (PreferenceScreen) generalSettingsFragment.findPreference("font_size");
                if (preferenceCategory != null && preferenceScreen != null) {
                    preferenceCategory.removePreference(preferenceScreen);
                }
                return Unit.INSTANCE;
            case 21:
                return new DrawablePainter$callback$2$1(i3, (DrawablePainter) obj);
            case 22:
                CoilImage$lambda$2$0 = CoilImageKt.CoilImage$lambda$2$0((ImageRequest) obj);
                return CoilImage$lambda$2$0;
            case 23:
                return ((FadeInEffectNode) obj).key.getValue();
            case 24:
                return ((FadeOutEffectNode) obj).key.getValue();
            case 25:
                return new UIntArray.Iterator((Object[]) obj);
            case 26:
                return "Unexpected end of input: yet to parse ".concat(((NumberSpanParserOperation) obj).getWhatThisExpects());
            case 27:
                return CameraDevices$CC.m(new StringBuilder("Unexpected end of input: yet to parse '"), ((PlainStringParserOperation) obj).string, '\'');
            case 28:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj;
                SerialDescriptorImpl buildSerialDescriptor = Handshake.Companion.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind$OPEN.INSTANCE, new SerialDescriptor[0], new ForwardingFileSystem$$ExternalSyntheticLambda0(i2, polymorphicSerializer));
                KClass kClass = polymorphicSerializer.baseClass;
                kClass.getClass();
                return new ContextDescriptor(buildSerialDescriptor, kClass);
            default:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                return Integer.valueOf(TuplesKt.hashCodeImpl(serialDescriptorImpl, serialDescriptorImpl.typeParametersDescriptors));
        }
    }
}
