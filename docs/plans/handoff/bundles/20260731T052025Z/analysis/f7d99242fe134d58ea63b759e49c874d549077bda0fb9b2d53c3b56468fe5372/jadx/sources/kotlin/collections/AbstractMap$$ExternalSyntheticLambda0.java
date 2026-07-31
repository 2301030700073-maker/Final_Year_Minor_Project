package kotlin.collections;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.core.app.ActivityCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.preference.Preference;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import app.k9mail.core.android.common.activity.CreateDocumentResultContract$Input;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.ui.folder.DisplayFolder;
import app.k9mail.legacy.ui.folder.FolderIconProvider;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$State;
import com.fsck.k9.activity.setup.AccountSetupCompositionViewModel;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Header;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StorageEditor$$ExternalSyntheticLambda3;
import com.fsck.k9.preferences.K9StoragePersister;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.managefolders.FolderListItem;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.messagelist.MessageListDiffCallback;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListInfo;
import com.fsck.k9.ui.messagelist.MessageListItem;
import com.fsck.k9.ui.messagelist.MessageListViewModel;
import com.fsck.k9.ui.messagesource.MessageHeadersFragment;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.fsck.k9.ui.settings.account.FolderListPreference;
import com.fsck.k9.ui.settings.account.RemoteFolderInfo;
import com.fsck.k9.ui.settings.export.Action;
import com.fsck.k9.ui.settings.export.SettingsExportFragment;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.export.SettingsListItem;
import com.google.android.material.textview.MaterialTextView;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageKt;
import com.skydoves.landscapist.coil3.CoilImageState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.datetime.internal.format.OptionalFormatStructure;
import kotlinx.serialization.ContextualSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AbstractMap$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ AbstractMap$$ExternalSyntheticLambda0(MessageHeadersFragment messageHeadersFragment, MaterialTextView materialTextView) {
        this.$r8$classId = 15;
        this.f$0 = materialTextView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        Object CoilImage$lambda$7$1$0;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                AbstractMap abstractMap = (AbstractMap) obj2;
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                StringBuilder sb = new StringBuilder();
                Object key = entry.getKey();
                sb.append(key == abstractMap ? "(this Map)" : String.valueOf(key));
                sb.append('=');
                Object value = entry.getValue();
                sb.append(value != abstractMap ? String.valueOf(value) : "(this Map)");
                return sb.toString();
            case 1:
                return Base64.SentFolderNotFoundNotification(((MessageCompose) obj2).account.uuid, (Continuation) obj);
            case 2:
                MessageHomeActivity messageHomeActivity = (MessageHomeActivity) obj2;
                String str = (String) obj;
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                str.getClass();
                if (str.equals("unified_account")) {
                    messageHomeActivity.openUnifiedFolders();
                } else {
                    LegacyAccountDto account = ((Preferences) messageHomeActivity.getAccountManager$1()).getAccount(str);
                    if (account != null) {
                        long defaultFolder = ((DefaultFolderProvider) messageHomeActivity.defaultFolderProvider$delegate$1.getValue()).getDefaultFolder(account);
                        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
                        localMessageSearch.addAllowedFolder(defaultFolder);
                        localMessageSearch.addAccountUuid(account.uuid);
                        Long autoExpandFolderId = account.getAutoExpandFolderId();
                        if (autoExpandFolderId != null && defaultFolder == autoExpandFolderId.longValue()) {
                            messageHomeActivity.performSearch(localMessageSearch);
                        } else {
                            Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
                            MessageHomeActivity.Companion.actionDisplaySearch$default(messageHomeActivity, localMessageSearch, false);
                            messageHomeActivity.initializeFolderDrawer();
                        }
                    }
                }
                return unit;
            case 3:
                MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment = (MessageComposeInAppNotificationFragment) obj2;
                InAppNotification inAppNotification = (InAppNotification) obj;
                inAppNotification.getClass();
                String accountUuid = inAppNotification.getAccountUuid();
                if (accountUuid != null && messageComposeInAppNotificationFragment.accountIds.contains(accountUuid)) {
                    r3 = true;
                }
                return Boolean.valueOf(r3);
            case 4:
                AccountSetupCompositionViewModel accountSetupCompositionViewModel = (AccountSetupCompositionViewModel) obj2;
                ((AccountSetupCompositionContract$State) obj).getClass();
                LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                String str2 = legacyAccount.senderName;
                String str3 = str2 == null ? "" : str2;
                String str4 = legacyAccount.email;
                String str5 = legacyAccount.alwaysBcc;
                String str6 = str5 == null ? "" : str5;
                boolean z2 = legacyAccount.signatureUse;
                String str7 = legacyAccount.signature;
                String str8 = str7 == null ? "" : str7;
                AbstractPersistentList abstractPersistentList = accountSetupCompositionViewModel.signatureLocations;
                boolean z3 = legacyAccount.isSignatureBeforeQuotedText;
                StringsResourceManager stringsResourceManager = accountSetupCompositionViewModel.resources;
                Pair pair = z3 ? new Pair(1, ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.account_settings_signature__location_before_quoted_text)) : new Pair(2, ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.account_settings_signature__location_after_quoted_text));
                abstractPersistentList.getClass();
                return new AccountSetupCompositionContract$State(str3, str4, str6, z2, str8, abstractPersistentList, pair);
            case 5:
                Message$RecipientType message$RecipientType = (Message$RecipientType) obj;
                message$RecipientType.getClass();
                Address[] recipients = ((MimeMessage) obj2).getRecipients(message$RecipientType);
                recipients.getClass();
                return ArraysKt___ArraysKt.asSequence(recipients);
            case 6:
                CssStyleProvider$Factory cssStyleProvider$Factory = (CssStyleProvider$Factory) obj;
                cssStyleProvider$Factory.getClass();
                LocalStore.AnonymousClass8 create = cssStyleProvider$Factory.create(((DisplayHtml) obj2).htmlSettings);
                switch (create.$r8$classId) {
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return create.val$attachmentId;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return create.val$attachmentId;
                    case 9:
                        return create.val$attachmentId;
                    default:
                        return create.val$attachmentId;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((List) obj).getClass();
                return IntOffsetKt.listOf((MessageReference) obj2);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                K9StorageEditor k9StorageEditor = (K9StorageEditor) obj2;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Logger logger = k9StorageEditor.logger;
                logger.info(null, null, new SyncDebugWorker$$ExternalSyntheticLambda0(20));
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = ((InMemoryStorage) obj).values;
                BinaryBitmap binaryBitmap = new BinaryBitmap(k9StorageEditor, hashMap2, hashMap);
                K9StoragePersister k9StoragePersister = k9StorageEditor.storagePersister;
                k9StoragePersister.getClass();
                HashMap hashMap3 = new HashMap();
                SQLiteDatabase openDB = k9StoragePersister.openDB();
                try {
                    hashMap3.putAll(hashMap2);
                    EventRecodingLogger eventRecodingLogger = new EventRecodingLogger();
                    eventRecodingLogger.name = hashMap3;
                    eventRecodingLogger.eventQueue = openDB.compileStatement("INSERT INTO preferences_storage (primkey, value) VALUES (?, ?)");
                    eventRecodingLogger.logger = openDB.compileStatement("DELETE FROM preferences_storage WHERE primkey = ?");
                    openDB.beginTransaction();
                    binaryBitmap.persist(eventRecodingLogger);
                    ((SQLiteStatement) eventRecodingLogger.eventQueue).close();
                    ((SQLiteStatement) eventRecodingLogger.logger).close();
                    openDB.setTransactionSuccessful();
                    hashMap.putAll(hashMap3);
                    openDB.endTransaction();
                    openDB.close();
                    logger.info(null, null, new K9StorageEditor$$ExternalSyntheticLambda3(0, SystemClock.elapsedRealtime(), elapsedRealtime));
                    return new InMemoryStorage(hashMap, logger);
                } catch (Throwable th) {
                    openDB.endTransaction();
                    openDB.close();
                    throw th;
                }
            case 9:
                Long l = (Long) obj2;
                long longValue = ((Long) obj).longValue();
                if (l != null && longValue == l.longValue()) {
                    r3 = true;
                }
                return Boolean.valueOf(r3);
            case 10:
                BaseActivity baseActivity = (BaseActivity) obj2;
                if (!Intrinsics.areEqual((Locale) obj, baseActivity.overrideLocaleOnLaunch)) {
                    ActivityCompat.recreate(baseActivity);
                }
                return unit;
            case 11:
                ManageFoldersFragment manageFoldersFragment = (ManageFoldersFragment) obj2;
                List list = (List) obj;
                list.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Folder folder = ((DisplayFolder) it.next()).folder;
                    long j = folder.id;
                    FolderIconProvider folderIconProvider = (FolderIconProvider) manageFoldersFragment.folderIconProvider$delegate.getValue();
                    FolderType folderType = folder.type;
                    folderIconProvider.getClass();
                    arrayList.add(new FolderListItem(FolderIconProvider.getFolderIcon(folderType), j, ((FolderNameFormatter) manageFoldersFragment.folderNameFormatter$delegate.getValue()).displayName(folder)));
                }
                ItemAdapter itemAdapter = manageFoldersFragment.itemAdapter;
                if (itemAdapter != null) {
                    itemAdapter.setInternal(itemAdapter.intercept(arrayList), true);
                    return unit;
                }
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                throw null;
            case BasicTextKt.ShiftMeta /* 12 */:
                RecyclerView recyclerView = (RecyclerView) obj2;
                recyclerView.setPadding(recyclerView.getPaddingLeft(), (int) (((IntSize) obj).packedValue & 4294967295L), recyclerView.getPaddingRight(), recyclerView.getPaddingBottom());
                return unit;
            case 13:
                MessageListFragment messageListFragment = (MessageListFragment) obj2;
                MessageListInfo messageListInfo = (MessageListInfo) obj;
                messageListInfo.getClass();
                List list2 = messageListInfo.messageListItems;
                if (messageListFragment.isThreadDisplay && list2.isEmpty()) {
                    MessageHomeActivity messageHomeActivity2 = messageListFragment.fragmentListener;
                    if (messageHomeActivity2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                        throw null;
                    }
                    messageHomeActivity2.getOnBackPressedDispatcher().onBackPressed();
                } else {
                    if (messageListFragment.isThreadDisplay) {
                        String str9 = ((MessageListItem) CollectionsKt.first(list2)).subject;
                        String stripSubject = str9 != null ? Utility.stripSubject(str9) : null;
                        if (stripSubject == null || stripSubject.length() == 0) {
                            stripSubject = messageListFragment.getString(R.string.general_no_subject);
                        }
                        messageListFragment.threadTitle = stripSubject;
                        messageListFragment.updateTitle();
                    }
                    if (messageListFragment.rememberedSelected != null) {
                        messageListFragment.rememberedSelected = null;
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((MessageListItem) it2.next()).account);
                    }
                    Iterator it3 = CollectionsKt.toSet(arrayList2).iterator();
                    while (it3.hasNext()) {
                        messageListFragment.getMessagingController$1().checkAuthenticationProblem(((LegacyAccount) it3.next()).id);
                    }
                    messageListFragment.resetActionMode$1();
                    AppCompatActivity activity = messageListFragment.getActivity();
                    if (activity != null) {
                        activity.invalidateOptionsMenu();
                    }
                    messageListFragment.initialMessageListLoad = false;
                    FolderInfoHolder folderInfoHolder = messageListFragment.currentFolder;
                    if (folderInfoHolder != null) {
                        folderInfoHolder.moreMessages = messageListInfo.hasMoreMessages;
                        messageListFragment.updateFooterText$1();
                    }
                }
                return unit;
            case 14:
                ((MessageListViewModel) obj2).messageListLiveData.setValue((MessageListInfo) obj);
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                MaterialTextView materialTextView = (MaterialTextView) obj2;
                List<Header> list3 = (List) obj;
                list3.getClass();
                materialTextView.getClass();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z4 = true;
                for (Header header : list3) {
                    String str10 = header.name;
                    String str11 = header.value;
                    if (z4) {
                        z = false;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        z = z4;
                    }
                    StyleSpan styleSpan = new StyleSpan(1);
                    SpannableString spannableString = new SpannableString(ViewSizeResolver.CC.m(str10, ": "));
                    spannableString.setSpan(styleSpan, 0, spannableString.length(), 0);
                    spannableStringBuilder.append((CharSequence) spannableString);
                    String unfold = JisSupport.unfold(str11);
                    spannableStringBuilder.append((CharSequence) (unfold == null ? null : JisSupport.decodeEncodedWords(unfold, null)));
                    z4 = z;
                }
                materialTextView.setText(spannableStringBuilder);
                return unit;
            case 16:
                return Boolean.valueOf(((Address) obj) != ((Address) obj2));
            case 17:
                MessageViewContainerFragment messageViewContainerFragment = (MessageViewContainerFragment) obj2;
                List list4 = ((MessageListInfo) obj).messageListItems;
                if (!list4.isEmpty() && !list4.isEmpty()) {
                    Iterator it4 = list4.iterator();
                    while (it4.hasNext()) {
                        MessageReference messageReference = ((MessageListItem) it4.next()).getMessageReference();
                        MessageReference messageReference2 = messageViewContainerFragment.messageReference;
                        if (messageReference2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("messageReference");
                            throw null;
                        }
                        if (messageReference.equals(messageReference2)) {
                            ViewPager2 viewPager2 = messageViewContainerFragment.viewPager;
                            if (viewPager2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                                throw null;
                            }
                            int currentItem = viewPager2.getCurrentItem();
                            MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = messageViewContainerFragment.adapter;
                            if (messageViewContainerAdapter == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                throw null;
                            }
                            DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new MessageListDiffCallback(messageViewContainerAdapter.messageList, list4, 1));
                            messageViewContainerAdapter.messageList = list4;
                            calculateDiff.dispatchUpdatesTo(messageViewContainerAdapter);
                            ViewPager2 viewPager22 = messageViewContainerFragment.viewPager;
                            if (viewPager22 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                                throw null;
                            }
                            if (viewPager22.getAdapter() == null) {
                                ViewPager2 viewPager23 = messageViewContainerFragment.viewPager;
                                if (viewPager23 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                                    throw null;
                                }
                                MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter2 = messageViewContainerFragment.adapter;
                                if (messageViewContainerAdapter2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                    throw null;
                                }
                                viewPager23.setAdapter(messageViewContainerAdapter2);
                            }
                            MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter3 = messageViewContainerFragment.adapter;
                            if (messageViewContainerAdapter3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                throw null;
                            }
                            MessageReference messageReference3 = messageViewContainerFragment.messageReference;
                            if (messageReference3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("messageReference");
                                throw null;
                            }
                            Iterator it5 = messageViewContainerAdapter3.messageList.iterator();
                            int i2 = 0;
                            while (true) {
                                if (!it5.hasNext()) {
                                    i2 = -1;
                                } else if (!((MessageListItem) it5.next()).getMessageReference().equals(messageReference3)) {
                                    i2++;
                                }
                            }
                            if (i2 != currentItem) {
                                ViewPager2 viewPager24 = messageViewContainerFragment.viewPager;
                                if (viewPager24 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                                    throw null;
                                }
                                viewPager24.setCurrentItem(i2, false);
                            }
                            return unit;
                        }
                    }
                }
                MessageHomeActivity messageHomeActivity3 = messageViewContainerFragment.fragmentListener;
                if (messageHomeActivity3 != null) {
                    messageHomeActivity3.returnToMessageList();
                    return unit;
                }
                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                throw null;
            case 18:
                NotificationSettings notificationSettings = (NotificationSettings) obj;
                notificationSettings.getClass();
                return NotificationSettings.copy$default(notificationSettings, null, (NotificationLight) obj2, null, 11);
            case 19:
                AccountSettingsFragment accountSettingsFragment = (AccountSettingsFragment) obj2;
                RemoteFolderInfo remoteFolderInfo = (RemoteFolderInfo) obj;
                int i3 = AccountSettingsFragment.$r8$clinit;
                if (remoteFolderInfo != null) {
                    List list5 = remoteFolderInfo.folders;
                    Preference findPreference = accountSettingsFragment.findPreference("auto_select_folder");
                    FolderListPreference folderListPreference = findPreference instanceof FolderListPreference ? (FolderListPreference) findPreference : null;
                    if (folderListPreference != null) {
                        folderListPreference.mEntries = (CharSequence[]) CollectionsKt.plus((Collection) IntOffsetKt.listOf(folderListPreference.noFolderSelectedName), (Iterable) folderListPreference.getFolderDisplayNames(list5)).toArray(new CharSequence[0]);
                        folderListPreference.mEntryValues = (CharSequence[]) CollectionsKt.plus((Collection) IntOffsetKt.listOf("MANUAL|"), (Iterable) FolderListPreference.getFolderValues(list5)).toArray(new String[0]);
                        folderListPreference.setEnabled(true);
                    }
                    accountSettingsFragment.setFolders("archive_folder", remoteFolderInfo, FolderType.ARCHIVE);
                    accountSettingsFragment.setFolders("drafts_folder", remoteFolderInfo, FolderType.DRAFTS);
                    accountSettingsFragment.setFolders("sent_folder", remoteFolderInfo, FolderType.SENT);
                    accountSettingsFragment.setFolders("spam_folder", remoteFolderInfo, FolderType.SPAM);
                    accountSettingsFragment.setFolders("trash_folder", remoteFolderInfo, FolderType.TRASH);
                }
                return unit;
            case 20:
                SettingsExportFragment settingsExportFragment = (SettingsExportFragment) obj2;
                Action action = (Action) obj;
                action.getClass();
                if (action instanceof Action.PickDocument) {
                    settingsExportFragment.createDocumentLauncher.launch(new CreateDocumentResultContract$Input(((Action.PickDocument) action).fileNameSuggestion, "application/octet-stream"));
                } else {
                    if (!(action instanceof Action.ShareDocument)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    Uri uri = ((Action.ShareDocument) action).contentUri;
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("application/octet-stream");
                    intent.putExtra("android.intent.extra.STREAM", uri);
                    intent.addFlags(1);
                    settingsExportFragment.startActivity(Intent.createChooser(intent, null));
                }
                return unit;
            case 21:
                SettingsListItem.Account account2 = (SettingsListItem.Account) obj;
                account2.getClass();
                Map map = ((SettingsExportViewModel) obj2).accountsMap;
                int i4 = account2.accountNumber;
                String str12 = (String) map.get(Integer.valueOf(i4));
                if (str12 != null) {
                    return str12;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unknown account number: ", i4);
                return null;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, ((ImageOptions) obj2).getContentDescription());
                SemanticsPropertiesKt.m674setRolekuIjeqM(semanticsPropertyReceiver, 5);
                return unit;
            case 23:
                CoilImage$lambda$7$1$0 = CoilImageKt.CoilImage$lambda$7$1$0((CoilImageState) obj2, (CoilImageState) obj);
                return CoilImage$lambda$7$1$0;
            case 24:
                return obj == ((AbstractCollection) obj2) ? "(this Collection)" : String.valueOf(obj);
            case 25:
                obj.getClass();
                return ((ImmLeaksCleaner$$ExternalSyntheticLambda0) obj2).invoke();
            case 26:
                return ((MatcherMatchResult$groups$1) obj2).get(((Integer) obj).intValue());
            case 27:
                ((MutexImpl) obj2).unlock(null);
                return unit;
            case 28:
                Iterator it6 = ((OptionalFormatStructure) obj2).fields.iterator();
                while (it6.hasNext()) {
                    OptionalFormatStructure.PropertyWithDefault propertyWithDefault = (OptionalFormatStructure.PropertyWithDefault) it6.next();
                    propertyWithDefault.accessor.trySetWithoutReassigning(obj, propertyWithDefault.defaultValue);
                }
                return unit;
            default:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor descriptor = ((PolymorphicSerializer) ((ContextualSerializer) obj2).fallbackSerializer).getDescriptor();
                List annotations = descriptor != null ? descriptor.getAnnotations() : null;
                if (annotations == null) {
                    annotations = EmptyList.INSTANCE;
                }
                classSerialDescriptorBuilder.annotations = annotations;
                return unit;
        }
    }

    public /* synthetic */ AbstractMap$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    public /* synthetic */ AbstractMap$$ExternalSyntheticLambda0(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.$r8$classId = 27;
        this.f$0 = mutexImpl;
    }
}
