package com.fsck.k9.ui.messagelist;

import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageMapper;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.contacts.ContactLetterBitmapCreator;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.MessageListCache;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchCondition;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLoader {
    public final DefaultLegacyAccountManager accountManager;
    public final ContactLetterBitmapCreator contactLetterBitmapCreator;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final LocalStoreProvider localStoreProvider;
    public final MessageHelper messageHelper;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final DefaultMessageListRepository messageListRepository;
    public final DefaultOutboxFolderManager outboxFolderManager;

    public MessageListLoader(DefaultLegacyAccountManager defaultLegacyAccountManager, LocalStoreProvider localStoreProvider, DefaultMessageListRepository defaultMessageListRepository, MessageHelper messageHelper, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager, DefaultOutboxFolderManager defaultOutboxFolderManager, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, ContactLetterBitmapCreator contactLetterBitmapCreator) {
        this.accountManager = defaultLegacyAccountManager;
        this.localStoreProvider = localStoreProvider;
        this.messageListRepository = defaultMessageListRepository;
        this.messageHelper = messageHelper;
        this.messageListPreferencesManager = defaultMessageListPreferencesManager;
        this.outboxFolderManager = defaultOutboxFolderManager;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.contactLetterBitmapCreator = contactLetterBitmapCreator;
    }

    public static Pair buildSelection(LegacyAccount legacyAccount, MessageListConfig messageListConfig) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        MessageReference messageReference = messageListConfig.activeMessage;
        int i = 1;
        boolean z = messageReference != null && Intrinsics.areEqual(messageReference.accountUuid, legacyAccount.uuid);
        if (z && messageReference != null) {
            sb.append("(uid = ? AND folder_id = ?) OR (");
            arrayList.add(messageReference.uid);
            arrayList.add(String.valueOf(messageReference.folderId));
        }
        SearchConditionTreeNode conditions = messageListConfig.search.getConditions();
        ArrayList arrayList2 = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        ByteStreamsKt.buildWhereClause(conditions, sb2, arrayList2);
        SoftPool softPool = new SoftPool(i, sb2.toString(), arrayList2);
        sb.append((String) softPool.threadLocalStack);
        arrayList.addAll((ArrayList) softPool.initializer);
        if (z) {
            sb.append(')');
        }
        return new Pair(sb.toString(), (String[]) arrayList.toArray(new String[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MessageListInfo getMessageListInfo(final MessageListConfig messageListConfig) {
        Comparator comparator;
        Comparator comparator2;
        Comparator comparator3;
        Comparator comparator4;
        boolean z;
        boolean z2;
        Comparator comparator5;
        MessageListInfo messageListInfo;
        Object obj;
        String str;
        List messages;
        SearchCondition searchCondition;
        String str2;
        LocalMessageSearch localMessageSearch = messageListConfig.search;
        boolean z3 = messageListConfig.sortAscending;
        SortType sortType = messageListConfig.sortType;
        ArrayList legacyAccountsFromLocalSearch = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(localMessageSearch, this.accountManager);
        ArrayList arrayList = new ArrayList();
        Iterator it = legacyAccountsFromLocalSearch.iterator();
        while (true) {
            final int i = 4;
            if (!it.hasNext()) {
                int ordinal = sortType.ordinal();
                final int i2 = 3;
                final int i3 = 2;
                final int i4 = 1;
                Comparator comparator6 = String.CASE_INSENSITIVE_ORDER;
                switch (ordinal) {
                    case 0:
                        if (!z3) {
                            comparator = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i5 = i3;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i5) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                            break;
                        } else {
                            final int i5 = 0;
                            comparator = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i5;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                            break;
                        }
                    case 1:
                        if (!z3) {
                            comparator = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                            break;
                        } else {
                            comparator = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i2;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                            break;
                        }
                    case 2:
                        if (z3) {
                            comparator6.getClass();
                            final int i6 = 6;
                            comparator2 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i6;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        } else {
                            comparator6.getClass();
                            final int i7 = 7;
                            comparator2 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i7;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        }
                        comparator = MessageListLoaderKt.access$thenByDate(comparator2, messageListConfig);
                        break;
                    case 3:
                        if (z3) {
                            comparator6.getClass();
                            final int i8 = 8;
                            comparator3 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i8;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        } else {
                            comparator6.getClass();
                            final int i9 = 9;
                            comparator3 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i9;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        }
                        comparator = MessageListLoaderKt.access$thenByDate(comparator3, messageListConfig);
                        break;
                    case 4:
                        if (z3) {
                            final int i10 = 0;
                            comparator4 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$5
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i11 = i10;
                                    MessageListConfig messageListConfig2 = messageListConfig;
                                    switch (i11) {
                                        case 0:
                                            MessageListItem messageListItem = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem.getMessageReference());
                                            Boolean valueOf = Boolean.valueOf(messageSortOverride != null ? messageSortOverride.isRead : messageListItem.isRead);
                                            MessageListItem messageListItem2 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride2 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem2.getMessageReference());
                                            return valueOf.compareTo(Boolean.valueOf(messageSortOverride2 != null ? messageSortOverride2.isRead : messageListItem2.isRead));
                                        case 1:
                                            MessageListItem messageListItem3 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride3 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem3.getMessageReference());
                                            Boolean valueOf2 = Boolean.valueOf(messageSortOverride3 != null ? messageSortOverride3.isRead : messageListItem3.isRead);
                                            MessageListItem messageListItem4 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride4 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem4.getMessageReference());
                                            return valueOf2.compareTo(Boolean.valueOf(messageSortOverride4 != null ? messageSortOverride4.isRead : messageListItem4.isRead));
                                        case 2:
                                            MessageListItem messageListItem5 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride5 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem5.getMessageReference());
                                            Boolean valueOf3 = Boolean.valueOf(messageSortOverride5 != null ? messageSortOverride5.isStarred : messageListItem5.isStarred);
                                            MessageListItem messageListItem6 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride6 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem6.getMessageReference());
                                            return valueOf3.compareTo(Boolean.valueOf(messageSortOverride6 != null ? messageSortOverride6.isStarred : messageListItem6.isStarred));
                                        default:
                                            MessageListItem messageListItem7 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride7 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem7.getMessageReference());
                                            Boolean valueOf4 = Boolean.valueOf(messageSortOverride7 != null ? messageSortOverride7.isStarred : messageListItem7.isStarred);
                                            MessageListItem messageListItem8 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride8 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem8.getMessageReference());
                                            return valueOf4.compareTo(Boolean.valueOf(messageSortOverride8 != null ? messageSortOverride8.isStarred : messageListItem8.isStarred));
                                    }
                                }
                            };
                        } else {
                            comparator4 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$5
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i11 = i4;
                                    MessageListConfig messageListConfig2 = messageListConfig;
                                    switch (i11) {
                                        case 0:
                                            MessageListItem messageListItem = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem.getMessageReference());
                                            Boolean valueOf = Boolean.valueOf(messageSortOverride != null ? messageSortOverride.isRead : messageListItem.isRead);
                                            MessageListItem messageListItem2 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride2 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem2.getMessageReference());
                                            return valueOf.compareTo(Boolean.valueOf(messageSortOverride2 != null ? messageSortOverride2.isRead : messageListItem2.isRead));
                                        case 1:
                                            MessageListItem messageListItem3 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride3 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem3.getMessageReference());
                                            Boolean valueOf2 = Boolean.valueOf(messageSortOverride3 != null ? messageSortOverride3.isRead : messageListItem3.isRead);
                                            MessageListItem messageListItem4 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride4 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem4.getMessageReference());
                                            return valueOf2.compareTo(Boolean.valueOf(messageSortOverride4 != null ? messageSortOverride4.isRead : messageListItem4.isRead));
                                        case 2:
                                            MessageListItem messageListItem5 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride5 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem5.getMessageReference());
                                            Boolean valueOf3 = Boolean.valueOf(messageSortOverride5 != null ? messageSortOverride5.isStarred : messageListItem5.isStarred);
                                            MessageListItem messageListItem6 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride6 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem6.getMessageReference());
                                            return valueOf3.compareTo(Boolean.valueOf(messageSortOverride6 != null ? messageSortOverride6.isStarred : messageListItem6.isStarred));
                                        default:
                                            MessageListItem messageListItem7 = (MessageListItem) obj3;
                                            MessageSortOverride messageSortOverride7 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem7.getMessageReference());
                                            Boolean valueOf4 = Boolean.valueOf(messageSortOverride7 != null ? messageSortOverride7.isStarred : messageListItem7.isStarred);
                                            MessageListItem messageListItem8 = (MessageListItem) obj2;
                                            MessageSortOverride messageSortOverride8 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem8.getMessageReference());
                                            return valueOf4.compareTo(Boolean.valueOf(messageSortOverride8 != null ? messageSortOverride8.isStarred : messageListItem8.isStarred));
                                    }
                                }
                            };
                        }
                        comparator = MessageListLoaderKt.access$thenByDate(comparator4, messageListConfig);
                        break;
                    case 5:
                        comparator = MessageListLoaderKt.access$thenByDate(!z3 ? new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$5
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                int i11 = i3;
                                MessageListConfig messageListConfig2 = messageListConfig;
                                switch (i11) {
                                    case 0:
                                        MessageListItem messageListItem = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem.getMessageReference());
                                        Boolean valueOf = Boolean.valueOf(messageSortOverride != null ? messageSortOverride.isRead : messageListItem.isRead);
                                        MessageListItem messageListItem2 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride2 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem2.getMessageReference());
                                        return valueOf.compareTo(Boolean.valueOf(messageSortOverride2 != null ? messageSortOverride2.isRead : messageListItem2.isRead));
                                    case 1:
                                        MessageListItem messageListItem3 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride3 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem3.getMessageReference());
                                        Boolean valueOf2 = Boolean.valueOf(messageSortOverride3 != null ? messageSortOverride3.isRead : messageListItem3.isRead);
                                        MessageListItem messageListItem4 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride4 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem4.getMessageReference());
                                        return valueOf2.compareTo(Boolean.valueOf(messageSortOverride4 != null ? messageSortOverride4.isRead : messageListItem4.isRead));
                                    case 2:
                                        MessageListItem messageListItem5 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride5 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem5.getMessageReference());
                                        Boolean valueOf3 = Boolean.valueOf(messageSortOverride5 != null ? messageSortOverride5.isStarred : messageListItem5.isStarred);
                                        MessageListItem messageListItem6 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride6 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem6.getMessageReference());
                                        return valueOf3.compareTo(Boolean.valueOf(messageSortOverride6 != null ? messageSortOverride6.isStarred : messageListItem6.isStarred));
                                    default:
                                        MessageListItem messageListItem7 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride7 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem7.getMessageReference());
                                        Boolean valueOf4 = Boolean.valueOf(messageSortOverride7 != null ? messageSortOverride7.isStarred : messageListItem7.isStarred);
                                        MessageListItem messageListItem8 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride8 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem8.getMessageReference());
                                        return valueOf4.compareTo(Boolean.valueOf(messageSortOverride8 != null ? messageSortOverride8.isStarred : messageListItem8.isStarred));
                                }
                            }
                        } : new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$5
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                int i11 = i2;
                                MessageListConfig messageListConfig2 = messageListConfig;
                                switch (i11) {
                                    case 0:
                                        MessageListItem messageListItem = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem.getMessageReference());
                                        Boolean valueOf = Boolean.valueOf(messageSortOverride != null ? messageSortOverride.isRead : messageListItem.isRead);
                                        MessageListItem messageListItem2 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride2 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem2.getMessageReference());
                                        return valueOf.compareTo(Boolean.valueOf(messageSortOverride2 != null ? messageSortOverride2.isRead : messageListItem2.isRead));
                                    case 1:
                                        MessageListItem messageListItem3 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride3 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem3.getMessageReference());
                                        Boolean valueOf2 = Boolean.valueOf(messageSortOverride3 != null ? messageSortOverride3.isRead : messageListItem3.isRead);
                                        MessageListItem messageListItem4 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride4 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem4.getMessageReference());
                                        return valueOf2.compareTo(Boolean.valueOf(messageSortOverride4 != null ? messageSortOverride4.isRead : messageListItem4.isRead));
                                    case 2:
                                        MessageListItem messageListItem5 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride5 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem5.getMessageReference());
                                        Boolean valueOf3 = Boolean.valueOf(messageSortOverride5 != null ? messageSortOverride5.isStarred : messageListItem5.isStarred);
                                        MessageListItem messageListItem6 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride6 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem6.getMessageReference());
                                        return valueOf3.compareTo(Boolean.valueOf(messageSortOverride6 != null ? messageSortOverride6.isStarred : messageListItem6.isStarred));
                                    default:
                                        MessageListItem messageListItem7 = (MessageListItem) obj3;
                                        MessageSortOverride messageSortOverride7 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem7.getMessageReference());
                                        Boolean valueOf4 = Boolean.valueOf(messageSortOverride7 != null ? messageSortOverride7.isStarred : messageListItem7.isStarred);
                                        MessageListItem messageListItem8 = (MessageListItem) obj2;
                                        MessageSortOverride messageSortOverride8 = (MessageSortOverride) messageListConfig2.sortOverrides.get(messageListItem8.getMessageReference());
                                        return valueOf4.compareTo(Boolean.valueOf(messageSortOverride8 != null ? messageSortOverride8.isStarred : messageListItem8.isStarred));
                                }
                            }
                        }, messageListConfig);
                        break;
                    case 6:
                        if (z3) {
                            comparator5 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i4;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        } else {
                            final int i11 = 5;
                            comparator5 = new Comparator() { // from class: com.fsck.k9.ui.messagelist.MessageListLoader$sortedWith$$inlined$compareBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    int i52 = i11;
                                    Comparator comparator7 = String.CASE_INSENSITIVE_ORDER;
                                    switch (i52) {
                                        case 0:
                                            return Long.valueOf(((MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((MessageListItem) obj3).messageDate));
                                        case 1:
                                            return Boolean.valueOf(((MessageListItem) obj3).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj2).hasAttachments));
                                        case 2:
                                            return Long.valueOf(((MessageListItem) obj3).messageDate).compareTo(Long.valueOf(((MessageListItem) obj2).messageDate));
                                        case 3:
                                            return Long.valueOf(((MessageListItem) obj2).internalDate).compareTo(Long.valueOf(((MessageListItem) obj3).internalDate));
                                        case 4:
                                            return Long.valueOf(((MessageListItem) obj3).internalDate).compareTo(Long.valueOf(((MessageListItem) obj2).internalDate));
                                        case 5:
                                            return Boolean.valueOf(((MessageListItem) obj2).hasAttachments).compareTo(Boolean.valueOf(((MessageListItem) obj3).hasAttachments));
                                        case 6:
                                            String str3 = ((MessageListItem) obj2).subject;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String str4 = ((MessageListItem) obj3).subject;
                                            return comparator7.compare(str3, str4 != null ? str4 : "");
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            String str5 = ((MessageListItem) obj3).subject;
                                            if (str5 == null) {
                                                str5 = "";
                                            }
                                            String str6 = ((MessageListItem) obj2).subject;
                                            return comparator7.compare(str5, str6 != null ? str6 : "");
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            return comparator7.compare(((MessageListItem) obj2).displayName.toString(), ((MessageListItem) obj3).displayName.toString());
                                        default:
                                            return comparator7.compare(((MessageListItem) obj3).displayName.toString(), ((MessageListItem) obj2).displayName.toString());
                                    }
                                }
                            };
                        }
                        comparator = MessageListLoaderKt.access$thenByDate(comparator5, messageListConfig);
                        break;
                    default:
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                }
                List sortedWith = CollectionsKt.sortedWith(arrayList, new SemanticsSortKt$special$$inlined$thenBy$1(comparator, i3));
                ArrayList folderIds = localMessageSearch.getFolderIds();
                if (legacyAccountsFromLocalSearch.size() == 1 && folderIds.size() == 1) {
                    z = false;
                    LocalFolder localFolder = new LocalFolder(this.localStoreProvider.getInstanceByLegacyAccount((LegacyAccount) legacyAccountsFromLocalSearch.get(0)), ((Number) folderIds.get(0)).longValue());
                    localFolder.open();
                    if (localFolder.moreMessages != 2) {
                        z2 = true;
                        return new MessageListInfo(sortedWith, z2);
                    }
                } else {
                    z = false;
                }
                z2 = z;
                return new MessageListInfo(sortedWith, z2);
            }
            LegacyAccount legacyAccount = (LegacyAccount) it.next();
            String str3 = legacyAccount.uuid;
            Iterator it2 = localMessageSearch.leafSet.iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj = it2.next();
                    SearchCondition searchCondition2 = ((SearchConditionTreeNode) obj).condition;
                    messageListInfo = null;
                    if ((searchCondition2 != null ? searchCondition2.field : null) == MessageSearchField.THREAD_ID) {
                    }
                } else {
                    messageListInfo = null;
                    obj = null;
                }
            }
            SearchConditionTreeNode searchConditionTreeNode = (SearchConditionTreeNode) obj;
            Long valueOf = (searchConditionTreeNode == null || (searchCondition = searchConditionTreeNode.condition) == null || (str2 = searchCondition.value) == null) ? messageListInfo : Long.valueOf(Long.parseLong(str2));
            switch (sortType.ordinal()) {
                case 0:
                    str = "date";
                    break;
                case 1:
                    str = "internal_date";
                    break;
                case 2:
                    str = "subject COLLATE NOCASE";
                    break;
                case 3:
                    str = "sender_list";
                    break;
                case 4:
                    str = "read";
                    break;
                case 5:
                    str = "(flagged != 1)";
                    break;
                case 6:
                    str = "(attachment_count < 1)";
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return messageListInfo;
            }
            String str4 = str + (z3 ? " ASC" : " DESC") + ", " + ((sortType == SortType.SORT_DATE || sortType == SortType.SORT_ARRIVAL) ? "" : messageListConfig.sortDateAscending ? "date ASC, " : "date DESC, ") + "id DESC";
            InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
            LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(this.messageHelper, legacyAccount, this.messageListPreferencesManager, this.outboxFolderManager, (inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_compose_for_message_list_items").isEnabled() || inMemoryFeatureFlagProvider.m1030providedj3aFNw("enable_message_list_new_state").isEnabled()) ? this.contactLetterBitmapCreator : messageListInfo, 15);
            DefaultMessageListRepository defaultMessageListRepository = this.messageListRepository;
            if (valueOf != 0) {
                long longValue = valueOf.longValue();
                str3.getClass();
                ListenableMessageStore messageStore = defaultMessageListRepository.messageStoreManager.getMessageStore(str3);
                MessageListCache cache = MessageListCache.Companion.getCache(str3);
                MessageMapper anonymousClass1 = cache.isEmpty() ? anonymousClass7 : new LocalStore.AnonymousClass1(i, cache, anonymousClass7);
                CheckFolderOperations checkFolderOperations = ((K9MessageStore) messageStore.messageStore.val$folders).retrieveMessageListOperations;
                checkFolderOperations.getClass();
                Object execute = checkFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda0(str4, longValue, anonymousClass1));
                execute.getClass();
                messages = (List) execute;
            } else if (messageListConfig.showingThreadedList) {
                Pair buildSelection = buildSelection(legacyAccount, messageListConfig);
                messages = defaultMessageListRepository.getThreadedMessages(str3, (String) buildSelection.first, (String[]) buildSelection.second, str4, anonymousClass7);
            } else {
                Pair buildSelection2 = buildSelection(legacyAccount, messageListConfig);
                messages = defaultMessageListRepository.getMessages(str3, (String) buildSelection2.first, (String[]) buildSelection2.second, str4, anonymousClass7);
            }
            CollectionsKt.addAll(messages, arrayList);
        }
    }
}
