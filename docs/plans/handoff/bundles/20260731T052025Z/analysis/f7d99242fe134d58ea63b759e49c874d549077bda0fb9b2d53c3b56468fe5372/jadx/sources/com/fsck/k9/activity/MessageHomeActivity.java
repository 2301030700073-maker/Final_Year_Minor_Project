package com.fsck.k9.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import androidx.appcompat.app.ActionBar;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.window.Api33Impl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.OperationKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.core.ui.compose.common.window.FoldableState;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract;
import com.fsck.k9.ui.messagelist.MessageListViewModel;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import com.fsck.k9.ui.messageview.PlaceholderFragment;
import com.fsck.k9.view.ViewSwitcher;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.startup.DefaultDatabaseUpgradeInterceptor;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.ui.animation.manager.DefaultAnimationManager;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.funding.noop.NoOpFundingManager;
import net.thunderbird.feature.navigation.drawer.dropdown.DropDownDrawer;
import net.thunderbird.feature.navigation.drawer.dropdown.FolderDrawerState;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.SearchAccount;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.serialization.LocalMessageSearchSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import okio.PriorityQueue;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessageHomeActivity extends BaseActivity implements FragmentManager.OnBackStackChangedListener, ViewSwitcher.OnSwitchCompleteListener {
    public static final Lazy coreResourceProvider$delegate;
    public LegacyAccountDto account;
    public final Lazy accountManager$delegate;
    public ActionBar actionBar;
    public final Lazy contactRepository$delegate;
    public final Lazy coreResourceProvider$delegate$1;
    public final Lazy databaseUpgradeInterceptor$delegate;
    public final Lazy defaultFolderProvider$delegate$1;
    public DisplayMode displayMode;
    public final Lazy foldableStateObserver$delegate;
    public final Lazy fundingManager$delegate;
    public final Lazy generalSettingsManager$delegate;
    public final boolean isDrawerEnabled;
    public final Lazy legacyAccountDataMapper$delegate;
    public final Lazy logger$delegate;
    public MessageListActivityConfig messageListActivityConfig;
    public MessageListFragmentBridgeContract messageListFragment;
    public final Lazy messageListFragmentFactory$delegate;
    public boolean messageListWasDisplayed;
    public MessageReference messageReference;
    public MessageViewContainerFragment messageViewContainerFragment;
    public boolean messageViewOnly;
    public PlaceholderFragment messageViewPlaceHolder;
    public final Lazy messagingController$delegate;
    public DropDownDrawer navigationDrawer;
    public boolean noThreading;
    public BackStackRecord openFolderTransaction;
    public final Lazy preferences$delegate;
    public ProgressBar progressBar;
    public LocalMessageSearch search;
    public boolean singleFolderMode;
    public ViewSwitcher viewSwitcher;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion implements KoinComponent {
        public static Intent actionDisplayMessageTemplateIntent(Context context, boolean z, boolean z2) {
            Intent intent = new Intent(context, (Class<?>) MessageHomeActivity.class);
            if (z) {
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
                ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersTitle();
                ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersDetail();
                LocalMessageSearch localMessageSearch = new LocalMessageSearch();
                localMessageSearch.id = "unified_folders";
                localMessageSearch.and(MessageSearchField.INTEGRATE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
                intent.putExtra("search_bytes", LocalMessageSearchSerializer.serialize(localMessageSearch));
            }
            intent.putExtra("message_view_only", z2);
            intent.addFlags(536870912);
            intent.addFlags(67108864);
            return intent;
        }

        public static void actionDisplaySearch$default(Context context, LocalMessageSearch localMessageSearch, boolean z) {
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            context.startActivity(intentDisplaySearch(context, localMessageSearch, false, z));
        }

        public static Intent intentDisplaySearch(Context context, LocalMessageSearch localMessageSearch, boolean z, boolean z2) {
            Intent intent = new Intent(context, (Class<?>) MessageHomeActivity.class);
            intent.putExtra("search_bytes", LocalMessageSearchSerializer.serialize(localMessageSearch));
            intent.putExtra("no_threading", z);
            intent.addFlags(536870912);
            intent.addFlags(67108864);
            if (z2) {
                intent.addFlags(268435456);
            }
            return intent;
        }

        public static void launch(Context context) {
            Intent intent = new Intent(context, (Class<?>) MessageHomeActivity.class);
            intent.addFlags(268435456);
            intent.addFlags(67108864);
            intent.addFlags(536870912);
            intent.addFlags(32768);
            context.startActivity(intent);
        }

        public static Intent shortcutIntentForAccount(Context context, String str) {
            str.getClass();
            Intent intent = new Intent(context, (Class<?>) MessageHomeActivity.class);
            intent.setAction("shortcut");
            intent.putExtra("account_uuid", str);
            intent.addFlags(536870912);
            intent.addFlags(67108864);
            intent.addFlags(268435456);
            return intent;
        }

        @Override // org.koin.core.component.KoinComponent
        public final /* bridge */ Koin getKoin() {
            return Sink$CC.$default$getKoin();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DisplayMode {
        public static final /* synthetic */ DisplayMode[] $VALUES;
        public static final DisplayMode MESSAGE_LIST;
        public static final DisplayMode MESSAGE_VIEW;
        public static final DisplayMode SPLIT_VIEW;

        static {
            DisplayMode displayMode = new DisplayMode("MESSAGE_LIST", 0);
            MESSAGE_LIST = displayMode;
            DisplayMode displayMode2 = new DisplayMode("MESSAGE_VIEW", 1);
            MESSAGE_VIEW = displayMode2;
            DisplayMode displayMode3 = new DisplayMode("SPLIT_VIEW", 2);
            SPLIT_VIEW = displayMode3;
            $VALUES = new DisplayMode[]{displayMode, displayMode2, displayMode3};
        }

        public static DisplayMode valueOf(String str) {
            return (DisplayMode) Enum.valueOf(DisplayMode.class, str);
        }

        public static DisplayMode[] values() {
            return (DisplayMode[]) $VALUES.clone();
        }
    }

    static {
        Companion companion = new Companion();
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(companion, 15);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        coreResourceProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(companion, 16));
    }

    public MessageHomeActivity() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 4;
        this.accountManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i3 = 5;
        this.defaultFolderProvider$delegate$1 = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i4 = 6;
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i5 = 7;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i6 = 8;
        this.contactRepository$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i7 = 9;
        this.coreResourceProvider$delegate$1 = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i8 = 10;
        this.fundingManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i8;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i9 = 11;
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i9;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i10 = 1;
        this.legacyAccountDataMapper$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i10;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i11 = 2;
        this.databaseUpgradeInterceptor$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i11;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i12 = 3;
        this.foldableStateObserver$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(i12, this, new MessageHomeActivity$$ExternalSyntheticLambda5(this, i10)));
        this.messageListFragmentFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.MessageHomeActivity$special$$inlined$inject$default$1
            public final /* synthetic */ MessageHomeActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i12;
                MessageHomeActivity messageHomeActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessageListFragment.Factory.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
                    case 9:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null);
                    case 10:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageHomeActivity).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        this.displayMode = DisplayMode.MESSAGE_LIST;
        this.isDrawerEnabled = true;
    }

    public static LocalMessageSearch createDefaultLocalSearch$default(MessageHomeActivity messageHomeActivity) {
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) CollectionsKt.firstOrNull(((Preferences) messageHomeActivity.preferences$delegate.getValue()).getAccounts());
        if (legacyAccountDto == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No default account available");
            return null;
        }
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.addAccountUuid(legacyAccountDto.uuid);
        localMessageSearch.addAllowedFolder(((DefaultFolderProvider) messageHomeActivity.defaultFolderProvider$delegate$1.getValue()).getDefaultFolder(legacyAccountDto));
        return localMessageSearch;
    }

    public final void configureDrawer() {
        String str;
        Object value;
        String str2;
        Object value2;
        Object value3;
        String str3;
        Object value4;
        String str4;
        DropDownDrawer dropDownDrawer = this.navigationDrawer;
        if (dropDownDrawer == null) {
            return;
        }
        StateFlowImpl stateFlowImpl = dropDownDrawer.drawerState;
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null || (str = legacyAccountDto.uuid) == null) {
            Sink$CC.warn$default(getLogger$1(), null, new SyncDebugWorker$$ExternalSyntheticLambda0(7), 2);
            Sink$CC.verbose$default(getLogger$1(), "MainActivity", null, new Regex$$ExternalSyntheticLambda1(21, dropDownDrawer, this), 2);
            return;
        }
        do {
            value = stateFlowImpl.getValue();
            FolderDrawerState folderDrawerState = (FolderDrawerState) value;
            str2 = folderDrawerState.selectedFolderId;
            folderDrawerState.getClass();
        } while (!stateFlowImpl.compareAndSet(value, new FolderDrawerState(str, str2)));
        LocalMessageSearch localMessageSearch = this.search;
        if (localMessageSearch == null) {
            Sink$CC.warn$default(getLogger$1(), null, new PathPart$$ExternalSyntheticLambda0(str, 10), 2);
            return;
        }
        if (!this.singleFolderMode) {
            if (!Intrinsics.areEqual(localMessageSearch.id, "unified_folders") || ((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().display.inboxSettings.isShowUnifiedInbox) {
                if (Intrinsics.areEqual(localMessageSearch.id, "unified_folders")) {
                    do {
                        value2 = stateFlowImpl.getValue();
                        ((FolderDrawerState) value2).getClass();
                    } while (!stateFlowImpl.compareAndSet(value2, new FolderDrawerState("unified_account", "unified_inbox")));
                    return;
                }
                return;
            }
            do {
                value3 = stateFlowImpl.getValue();
                FolderDrawerState folderDrawerState2 = (FolderDrawerState) value3;
                str3 = folderDrawerState2.selectedAccountUuid;
                folderDrawerState2.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, new FolderDrawerState(str3, null)));
            return;
        }
        Long l = (Long) CollectionsKt.getOrNull(0, localMessageSearch.getFolderIds());
        if (l != null) {
            long longValue = l.longValue();
            String str5 = (String) CollectionsKt.elementAt(localMessageSearch.getAccountUuids(), 0);
            str5.getClass();
            do {
                value4 = stateFlowImpl.getValue();
                str4 = str5 + "_" + longValue;
                ((FolderDrawerState) value4).getClass();
            } while (!stateFlowImpl.compareAndSet(value4, new FolderDrawerState(str5, str4)));
        }
    }

    public final SearchAccount createSearchAccount() {
        Lazy lazy = this.coreResourceProvider$delegate$1;
        String searchUnifiedFoldersTitle = ((K9CoreResourceProvider) lazy.getValue()).searchUnifiedFoldersTitle();
        String searchUnifiedFoldersDetail = ((K9CoreResourceProvider) lazy.getValue()).searchUnifiedFoldersDetail();
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.id = "unified_folders";
        localMessageSearch.and(MessageSearchField.INTEGRATE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
        return new SearchAccount(localMessageSearch, searchUnifiedFoldersTitle, searchUnifiedFoldersDetail);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean decodeExtras(android.content.Intent r19) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageHomeActivity.decodeExtras(android.content.Intent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01c8  */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageHomeActivity.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public final void displayViews() {
        int ordinal = this.displayMode.ordinal();
        if (ordinal == 0) {
            showMessageList();
            return;
        }
        if (ordinal == 1) {
            showMessageView();
            return;
        }
        if (ordinal != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        if (messageListFragmentBridgeContract == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        this.messageListWasDisplayed = true;
        messageListFragmentBridgeContract.setActive(true);
        messageListFragmentBridgeContract.onFullyActive();
        MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
        if (messageViewContainerFragment == null) {
            showMessageViewPlaceHolder();
        } else {
            messageViewContainerFragment.setMenuVisibility(true);
            messageViewContainerFragment.requireActivity().invalidateOptionsMenu();
        }
        if (isDrawerEnabled()) {
            if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
                lockDrawer();
            } else {
                DropDownDrawer dropDownDrawer = this.navigationDrawer;
                dropDownDrawer.getClass();
                dropDownDrawer.drawer.setDrawerLockMode(0);
                ActionBar actionBar = this.actionBar;
                if (actionBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("actionBar");
                    throw null;
                }
                actionBar.setHomeAsUpIndicator(R.drawable.ic_menu);
            }
        }
        onMessageListDisplayed();
    }

    public final void findFragments() {
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        LifecycleOwner findFragmentById = supportFragmentManager.findFragmentById(R.id.message_list_container);
        this.messageListFragment = findFragmentById instanceof MessageListFragmentBridgeContract ? (MessageListFragmentBridgeContract) findFragmentById : null;
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag("MessageViewContainerFragment");
        MessageViewContainerFragment messageViewContainerFragment = findFragmentByTag instanceof MessageViewContainerFragment ? (MessageViewContainerFragment) findFragmentByTag : null;
        this.messageViewContainerFragment = messageViewContainerFragment;
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        if (messageListFragmentBridgeContract != null) {
            if (messageViewContainerFragment != null) {
                MessageListViewModel legacyViewModel = messageListFragmentBridgeContract.getLegacyViewModel();
                legacyViewModel.getClass();
                legacyViewModel.messageListLiveData.observe(messageViewContainerFragment, new BaseActivity$sam$androidx_lifecycle_Observer$0(8, new AbstractMap$$ExternalSyntheticLambda0(17, messageViewContainerFragment)));
            }
            initializeFromLocalSearch(messageListFragmentBridgeContract.getLocalSearch());
        }
    }

    public final LegacyAccountDtoManager getAccountManager$1() {
        return (LegacyAccountDtoManager) this.accountManager$delegate.getValue();
    }

    public final GeneralSettingsManager getGeneralSettingsManager$1() {
        return (GeneralSettingsManager) this.generalSettingsManager$delegate.getValue();
    }

    public final Logger getLogger$1() {
        return (Logger) this.logger$delegate.getValue();
    }

    public final void initializeDisplayMode(Bundle bundle) {
        DisplayMode displayMode;
        boolean useSplitView = useSplitView();
        DisplayMode displayMode2 = DisplayMode.SPLIT_VIEW;
        if (useSplitView) {
            this.displayMode = displayMode2;
        } else if (bundle == null || (displayMode = (DisplayMode) Api33Impl.getSerializable(bundle, "displayMode", DisplayMode.class)) == null || displayMode == displayMode2) {
            this.displayMode = (this.messageViewContainerFragment == null && this.messageReference == null) ? DisplayMode.MESSAGE_LIST : DisplayMode.MESSAGE_VIEW;
        } else {
            this.displayMode = displayMode;
        }
    }

    public final void initializeFolderDrawer() {
        this.navigationDrawer = new DropDownDrawer(this, new AbstractMap$$ExternalSyntheticLambda0(2, this), new ComposerKt$$ExternalSyntheticLambda0(25, this), new MessageHomeActivity$$ExternalSyntheticLambda5(this, 0), new MessageHomeActivity$$ExternalSyntheticLambda5(this, 2), new MessageHomeActivity$$ExternalSyntheticLambda5(this, 3), new MessageHomeActivity$$ExternalSyntheticLambda5(this, 4), new MessageHomeActivity$$ExternalSyntheticLambda5(this, 5));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void initializeFragments() {
        MessageReference messageReference;
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        supportFragmentManager.mBackStackChangeListeners.add(this);
        boolean z = this.messageListFragment != null;
        if (!z) {
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            MessageListFragment.Factory factory = (MessageListFragment.Factory) this.messageListFragmentFactory$delegate.getValue();
            LocalMessageSearch localMessageSearch = this.search;
            localMessageSearch.getClass();
            MessageListFragmentBridgeContract newInstance = factory.newInstance(localMessageSearch, false, ((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().display.inboxSettings.isThreadedViewEnabled && !this.noThreading);
            backStackRecord.doAddOp(R.id.message_list_container, (Fragment) newInstance, null, 1);
            backStackRecord.commitNow();
            this.messageListFragment = newInstance;
        }
        if (z || this.messageViewContainerFragment != null || (messageReference = this.messageReference) == null) {
            return;
        }
        openMessage(messageReference);
    }

    public final void initializeFromLocalSearch(LocalMessageSearch localMessageSearch) {
        LegacyAccountDto account;
        this.search = localMessageSearch;
        boolean z = false;
        this.singleFolderMode = false;
        ArrayList folderIds = localMessageSearch.getFolderIds();
        LegacyAccountDto legacyAccountDto = this.account;
        LegacyAccountDtoManager accountManager$1 = getAccountManager$1();
        accountManager$1.getClass();
        Set set = localMessageSearch.accountUuidSet;
        if (set.isEmpty()) {
            legacyAccountDto = null;
        } else {
            String str = (String) CollectionsKt.singleOrNull(localMessageSearch.getAccountUuids());
            if (str != null && (account = ((Preferences) accountManager$1).getAccount(str)) != null) {
                legacyAccountDto = account;
            }
        }
        this.account = legacyAccountDto;
        if (!set.isEmpty() && folderIds.size() == 1) {
            z = true;
        }
        this.singleFolderMode = z;
        configureDrawer();
    }

    public boolean isDrawerEnabled() {
        return this.isDrawerEnabled;
    }

    public final void lockDrawer() {
        DropDownDrawer dropDownDrawer = this.navigationDrawer;
        dropDownDrawer.getClass();
        dropDownDrawer.drawer.setDrawerLockMode(1);
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(R.drawable.ic_arrow_back);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("actionBar");
            throw null;
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public final void onBackStackChanged() {
        findFragments();
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        if (messageListFragmentBridgeContract != null) {
            messageListFragmentBridgeContract.setActive(true);
            messageListFragmentBridgeContract.onFullyActive();
        }
        if (isDrawerEnabled() && getSupportFragmentManager().getBackStackEntryCount() <= 0) {
            DropDownDrawer dropDownDrawer = this.navigationDrawer;
            dropDownDrawer.getClass();
            dropDownDrawer.drawer.setDrawerLockMode(0);
            ActionBar actionBar = this.actionBar;
            if (actionBar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("actionBar");
                throw null;
            }
            actionBar.setHomeAsUpIndicator(R.drawable.ic_menu);
        }
        if (this.displayMode == DisplayMode.SPLIT_VIEW) {
            showMessageViewPlaceHolder();
        }
    }

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DefaultDatabaseUpgradeInterceptor defaultDatabaseUpgradeInterceptor = (DefaultDatabaseUpgradeInterceptor) this.databaseUpgradeInterceptor$delegate.getValue();
        Intent intent = getIntent();
        intent.getClass();
        defaultDatabaseUpgradeInterceptor.getClass();
        if (DefaultDatabaseUpgradeInterceptor.checkAndHandleUpgrade(this, intent)) {
            finish();
            return;
        }
        if (useSplitView()) {
            setLayout(R.layout.split_message_list);
        } else {
            setLayout(R.layout.message_list);
            ViewSwitcher viewSwitcher = (ViewSwitcher) findViewById(R.id.container);
            viewSwitcher.setFirstInAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_in_left));
            viewSwitcher.setFirstOutAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_out_right));
            viewSwitcher.setSecondInAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_in_right));
            viewSwitcher.setSecondOutAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_out_left));
            viewSwitcher.setOnSwitchCompleteListener(this);
            this.viewSwitcher = viewSwitcher;
        }
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.getClass();
        this.actionBar = supportActionBar;
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        ActionBar actionBar = this.actionBar;
        Continuation continuation = null;
        if (actionBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("actionBar");
            throw null;
        }
        actionBar.setDisplayShowTitleEnabled();
        if (isDrawerEnabled()) {
            initializeFolderDrawer();
        } else {
            ((DrawerLayout) findViewById(R.id.navigation_drawer_layout)).setDrawerLockMode(1);
        }
        Intent intent2 = getIntent();
        intent2.getClass();
        if (decodeExtras(intent2)) {
            if (isDrawerEnabled()) {
                configureDrawer();
            }
            findFragments();
            initializeDisplayMode(bundle);
            this.progressBar = (ProgressBar) findViewById(R.id.message_list_progress);
            this.messageViewPlaceHolder = new PlaceholderFragment();
            initializeFragments();
            displayViews();
            ((NoOpFundingManager) this.fundingManager$delegate.getValue()).getClass();
            this.lifecycleRegistry.addObserver((FoldableStateObserver) this.foldableStateObserver$delegate.getValue());
            JobKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new BlockRunner$cancel$1(this, continuation, 13), 3);
            getOnBackPressedDispatcher().addCallback(new MessageCompose.AnonymousClass3(5, this), this);
        }
    }

    public final void onDeleteHotKey() {
        if (this.displayMode == DisplayMode.MESSAGE_LIST) {
            MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
            messageListFragmentBridgeContract.getClass();
            messageListFragmentBridgeContract.onDelete();
        } else {
            MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
            if (messageViewContainerFragment != null) {
                messageViewContainerFragment.getMessageViewFragment().onDelete();
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        keyEvent.getClass();
        if (!((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().interaction.useVolumeKeysForNavigation || (i != 24 && i != 25)) {
            return super.onKeyUp(i, keyEvent);
        }
        Log.v("Swallowed key up.", new Object[0]);
        return true;
    }

    public final void onMessageListDisplayed() {
        MessagingController messagingController = (MessagingController) this.messagingController$delegate.getValue();
        LocalMessageSearch localMessageSearch = this.search;
        messagingController.getClass();
        messagingController.put("clearNotifications", new Processor$$ExternalSyntheticLambda2(11, messagingController, localMessageSearch));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        ((DefaultDatabaseUpgradeInterceptor) this.databaseUpgradeInterceptor$delegate.getValue()).getClass();
        if (DefaultDatabaseUpgradeInterceptor.checkAndHandleUpgrade(this, intent)) {
            finish();
            return;
        }
        if (isFinishing()) {
            return;
        }
        setIntent(intent);
        getSupportFragmentManager().popBackStackImmediate(-1, "first", 1);
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        Object obj = this.messageListFragment;
        obj.getClass();
        backStackRecord.remove((Fragment) obj);
        this.messageListFragment = null;
        backStackRecord.commit();
        removeMessageViewContainerFragment();
        this.messageReference = null;
        this.search = null;
        if (decodeExtras(intent)) {
            if (isDrawerEnabled()) {
                configureDrawer();
            }
            initializeDisplayMode(null);
            initializeFragments();
            displayViews();
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.displayMode == DisplayMode.MESSAGE_VIEW || getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getOnBackPressedDispatcher().onBackPressed();
            return true;
        }
        if (!isDrawerEnabled()) {
            finish();
            return true;
        }
        DropDownDrawer dropDownDrawer = this.navigationDrawer;
        dropDownDrawer.getClass();
        View findDrawerWithGravity = dropDownDrawer.drawer.findDrawerWithGravity(8388611);
        boolean isDrawerOpen = findDrawerWithGravity != null ? DrawerLayout.isDrawerOpen(findDrawerWithGravity) : false;
        DropDownDrawer dropDownDrawer2 = this.navigationDrawer;
        if (isDrawerOpen) {
            dropDownDrawer2.getClass();
            dropDownDrawer2.close();
            return true;
        }
        dropDownDrawer2.getClass();
        DrawerLayout drawerLayout = dropDownDrawer2.drawer;
        View findDrawerWithGravity2 = drawerLayout.findDrawerWithGravity(8388611);
        if (findDrawerWithGravity2 != null) {
            drawerLayout.openDrawer(findDrawerWithGravity2);
            return true;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m$1(DrawerLayout.gravityToString(8388611), "No drawer view found with gravity ");
        return false;
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onRestoreInstanceState(bundle);
        this.messageViewOnly = bundle.getBoolean("messageViewOnly");
        this.messageListWasDisplayed = bundle.getBoolean("messageListWasDisplayed");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        MessageListActivityConfig messageListActivityConfig = this.messageListActivityConfig;
        if (messageListActivityConfig == null) {
            this.messageListActivityConfig = ActionBar.create(getGeneralSettingsManager$1());
        } else if (!messageListActivityConfig.equals(ActionBar.create(getGeneralSettingsManager$1()))) {
            Intent intent = new Intent(this, (Class<?>) MessageHomeActivity.class);
            intent.addFlags(268435456);
            intent.addFlags(32768);
            startActivity(intent);
        }
        if (this.displayMode != DisplayMode.MESSAGE_VIEW) {
            onMessageListDisplayed();
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("displayMode", this.displayMode);
        bundle.putBoolean("messageViewOnly", this.messageViewOnly);
        bundle.putBoolean("messageListWasDisplayed", this.messageListWasDisplayed);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onSearchRequested() {
        if (this.displayMode == DisplayMode.MESSAGE_VIEW) {
            return false;
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        if (messageListFragmentBridgeContract == null) {
            return true;
        }
        messageListFragmentBridgeContract.expandSearchView();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        Lazy lazy = this.contactRepository$delegate;
        if (((ContactRepository) lazy.getValue()) instanceof CachingContactRepository) {
            ContactRepository contactRepository = (ContactRepository) lazy.getValue();
            contactRepository.getClass();
            ((CachingContactRepository) contactRepository).cache.clear();
        }
    }

    public final void openMessage(MessageReference messageReference) {
        messageReference.getClass();
        LegacyAccountDto account = ((Preferences) getAccountManager$1()).getAccount(messageReference.accountUuid);
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Account not found");
            return;
        }
        long j = messageReference.folderId;
        Long draftsFolderId = account.getDraftsFolderId();
        if (draftsFolderId == null || j != draftsFolderId.longValue()) {
            MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
            boolean isShowAccountIndicator$1 = messageListFragmentBridgeContract != null ? messageListFragmentBridgeContract.isShowAccountIndicator$1() : true;
            MessageViewContainerFragment messageViewContainerFragment = new MessageViewContainerFragment();
            OperationKt.withArguments(messageViewContainerFragment, new Pair("reference", messageReference.toIdentityString()), new Pair("showAccountIndicator", Boolean.valueOf(isShowAccountIndicator$1)));
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            backStackRecord.replace(R.id.message_view_container, messageViewContainerFragment, "MessageViewContainerFragment");
            backStackRecord.commitNow();
            this.messageViewContainerFragment = messageViewContainerFragment;
            MessageListFragmentBridgeContract messageListFragmentBridgeContract2 = this.messageListFragment;
            if (messageListFragmentBridgeContract2 != null) {
                MessageListViewModel legacyViewModel = messageListFragmentBridgeContract2.getLegacyViewModel();
                legacyViewModel.getClass();
                legacyViewModel.messageListLiveData.observe(messageViewContainerFragment, new BaseActivity$sam$androidx_lifecycle_Observer$0(8, new AbstractMap$$ExternalSyntheticLambda0(17, messageViewContainerFragment)));
            }
            if (this.displayMode == DisplayMode.SPLIT_VIEW) {
                messageViewContainerFragment.setMenuVisibility(true);
                messageViewContainerFragment.requireActivity().invalidateOptionsMenu();
            } else {
                showMessageView();
            }
        } else {
            this.displayMode = DisplayMode.MESSAGE_LIST;
            SchemaInfoUtilKt.actionEditDraft(this, messageReference);
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract3 = this.messageListFragment;
        if (messageListFragmentBridgeContract3 != null) {
            messageListFragmentBridgeContract3.collapseSearchView$1();
        }
    }

    public final void openUnifiedFolders() {
        Companion.actionDisplaySearch$default(this, createSearchAccount().relatedSearch, false);
    }

    public final void performNavigationAfterMessageRemoval() {
        String str = ((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().interaction.messageViewPostRemoveNavigation;
        int hashCode = str.hashCode();
        if (hashCode == -1273588685) {
            if (str.equals("ShowPreviousMessage") && !showPreviousMessage()) {
                returnToMessageList();
                return;
            }
            return;
        }
        if (hashCode != -813098441) {
            if (hashCode == -333004710 && str.equals("ReturnToMessageList")) {
                returnToMessageList();
                return;
            }
            return;
        }
        if (str.equals("ShowNextMessage") && !showNextMessage()) {
            returnToMessageList();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void performSearch(LocalMessageSearch localMessageSearch) {
        initializeFromLocalSearch(localMessageSearch);
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        MessageListFragmentBridgeContract newInstance = ((MessageListFragment.Factory) this.messageListFragmentFactory$delegate.getValue()).newInstance(localMessageSearch, false, ((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().display.inboxSettings.isThreadedViewEnabled);
        backStackRecord.replace(R.id.message_list_container, (Fragment) newInstance, null);
        this.messageListFragment = newInstance;
        this.openFolderTransaction = backStackRecord;
    }

    public final void removeMessageViewContainerFragment() {
        if (this.messageViewContainerFragment != null) {
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
            messageViewContainerFragment.getClass();
            backStackRecord.remove(messageViewContainerFragment);
            this.messageViewContainerFragment = null;
            backStackRecord.commit();
            MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
            if (messageListFragmentBridgeContract != null) {
                messageListFragmentBridgeContract.updateTitle();
            }
        }
    }

    public final void returnToMessageList() {
        if (this.displayMode == DisplayMode.SPLIT_VIEW) {
            showMessageViewPlaceHolder();
        } else {
            showMessageList();
        }
    }

    public final void setActionBarTitle(String str, String str2) {
        ((MaterialTextView) findViewById(R.id.toolbarTitle)).setText(str);
        MaterialTextView materialTextView = (MaterialTextView) findViewById(R.id.toolbarSubtitle);
        if (str2 != null) {
            materialTextView.setText(str2);
            materialTextView.setVisibility(0);
        } else {
            materialTextView.setText((CharSequence) null);
            materialTextView.setVisibility(8);
        }
    }

    public final void showMessageList() {
        this.messageViewOnly = false;
        this.messageListWasDisplayed = true;
        this.displayMode = DisplayMode.MESSAGE_LIST;
        MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
        if (messageViewContainerFragment != null) {
            messageViewContainerFragment.setMenuVisibility(false);
            messageViewContainerFragment.requireActivity().invalidateOptionsMenu();
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        messageListFragmentBridgeContract.getClass();
        messageListFragmentBridgeContract.setActive(true);
        MessageListFragmentBridgeContract messageListFragmentBridgeContract2 = this.messageListFragment;
        messageListFragmentBridgeContract2.getClass();
        messageListFragmentBridgeContract2.setActiveMessage(null);
        ViewSwitcher viewSwitcher = this.viewSwitcher;
        viewSwitcher.getClass();
        if (viewSwitcher.getDisplayedChild() == 0) {
            viewSwitcher.onAnimationEnd(null);
        } else {
            Animation animation = viewSwitcher.mFirstInAnimation;
            Animation animation2 = viewSwitcher.mFirstOutAnimation;
            if (((DefaultAnimationManager) viewSwitcher.animationManager).shouldShowAnimations()) {
                viewSwitcher.setInAnimation(animation);
                viewSwitcher.setOutAnimation(animation2);
                animation2.setAnimationListener(viewSwitcher);
            } else {
                viewSwitcher.setInAnimation(null);
                viewSwitcher.setOutAnimation(null);
            }
            viewSwitcher.setDisplayedChild(0);
            if (!((DefaultAnimationManager) viewSwitcher.animationManager).shouldShowAnimations()) {
                viewSwitcher.onAnimationEnd(null);
            }
        }
        if (isDrawerEnabled()) {
            if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
                lockDrawer();
            } else {
                DropDownDrawer dropDownDrawer = this.navigationDrawer;
                dropDownDrawer.getClass();
                dropDownDrawer.drawer.setDrawerLockMode(0);
                ActionBar actionBar = this.actionBar;
                if (actionBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("actionBar");
                    throw null;
                }
                actionBar.setHomeAsUpIndicator(R.drawable.ic_menu);
            }
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract3 = this.messageListFragment;
        if (messageListFragmentBridgeContract3 != null) {
            messageListFragmentBridgeContract3.updateTitle();
        }
        onMessageListDisplayed();
    }

    public final void showMessageView() {
        MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
        if (messageViewContainerFragment == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        this.displayMode = DisplayMode.MESSAGE_VIEW;
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        if (messageListFragmentBridgeContract != null) {
            messageListFragmentBridgeContract.setActive(false);
        }
        messageViewContainerFragment.setMenuVisibility(true);
        messageViewContainerFragment.requireActivity().invalidateOptionsMenu();
        if (!this.messageListWasDisplayed) {
            ViewSwitcher viewSwitcher = this.viewSwitcher;
            viewSwitcher.getClass();
            viewSwitcher.setAnimateFirstView(false);
        }
        ViewSwitcher viewSwitcher2 = this.viewSwitcher;
        viewSwitcher2.getClass();
        if (viewSwitcher2.getDisplayedChild() == 1) {
            viewSwitcher2.onAnimationEnd(null);
        } else {
            Animation animation = viewSwitcher2.mSecondInAnimation;
            Animation animation2 = viewSwitcher2.mSecondOutAnimation;
            if (((DefaultAnimationManager) viewSwitcher2.animationManager).shouldShowAnimations()) {
                viewSwitcher2.setInAnimation(animation);
                viewSwitcher2.setOutAnimation(animation2);
                animation2.setAnimationListener(viewSwitcher2);
            } else {
                viewSwitcher2.setInAnimation(null);
                viewSwitcher2.setOutAnimation(null);
            }
            viewSwitcher2.setDisplayedChild(1);
            if (!((DefaultAnimationManager) viewSwitcher2.animationManager).shouldShowAnimations()) {
                viewSwitcher2.onAnimationEnd(null);
            }
        }
        if (isDrawerEnabled()) {
            lockDrawer();
        }
        setActionBarTitle("", null);
    }

    public final void showMessageViewPlaceHolder() {
        removeMessageViewContainerFragment();
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        if (supportFragmentManager.findFragmentByTag("MessageViewPlaceholder") == null) {
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            PlaceholderFragment placeholderFragment = this.messageViewPlaceHolder;
            placeholderFragment.getClass();
            backStackRecord.replace(R.id.message_view_container, placeholderFragment, "MessageViewPlaceholder");
            backStackRecord.commit();
        }
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = this.messageListFragment;
        messageListFragmentBridgeContract.getClass();
        messageListFragmentBridgeContract.setActiveMessage(null);
    }

    public final boolean showNextMessage() {
        MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
        if (messageViewContainerFragment == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return false;
        }
        ViewPager2 viewPager2 = messageViewContainerFragment.viewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        int currentItem = viewPager2.getCurrentItem() + 1;
        MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = messageViewContainerFragment.adapter;
        if (messageViewContainerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (currentItem >= messageViewContainerAdapter.messageList.size()) {
            return false;
        }
        messageViewContainerFragment.setActiveMessage(currentItem);
        ViewPager2 viewPager22 = messageViewContainerFragment.viewPager;
        if (viewPager22 != null) {
            viewPager22.setCurrentItem(currentItem, false);
            return true;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        throw null;
    }

    public final boolean showPreviousMessage() {
        MessageViewContainerFragment messageViewContainerFragment = this.messageViewContainerFragment;
        if (messageViewContainerFragment == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return false;
        }
        ViewPager2 viewPager2 = messageViewContainerFragment.viewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        int currentItem = viewPager2.getCurrentItem() - 1;
        if (currentItem < 0) {
            return false;
        }
        messageViewContainerFragment.setActiveMessage(currentItem);
        ViewPager2 viewPager22 = messageViewContainerFragment.viewPager;
        if (viewPager22 != null) {
            viewPager22.setCurrentItem(currentItem, false);
            return true;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        throw null;
    }

    public final void startSearch(String str, LegacyAccount legacyAccount, Long l) {
        Bundle bundle;
        str.getClass();
        if (legacyAccount == null || l == null) {
            bundle = null;
        } else {
            bundle = new Bundle();
            bundle.putString("com.fsck.k9.search_account", legacyAccount.uuid);
            bundle.putLong("com.fsck.k9.search_folder", l.longValue());
        }
        Intent intent = new Intent(this, (Class<?>) MessageSearchActivity.class);
        intent.setAction("android.intent.action.SEARCH");
        intent.putExtra("query", str);
        intent.putExtra("app_data", bundle);
        startActivity(intent);
    }

    public final boolean useSplitView() {
        SplitViewMode splitViewMode = ((DefaultGeneralSettingsManager) getGeneralSettingsManager$1()).getConfig().display.coreSettings.splitViewMode;
        int i = getResources().getConfiguration().orientation;
        int ordinal = splitViewMode.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return false;
                    }
                    if (((FoldableState) ((FoldableStateObserver) this.foldableStateObserver$delegate.getValue())._foldableState.getValue()) == FoldableState.UNFOLDED) {
                    }
                } else if (i == 2) {
                }
            }
            return false;
        }
        return true;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LaunchData {
        public final Object account;
        public final Object messageReference;
        public final boolean messageViewOnly;
        public final boolean noThreading;
        public final Object search;

        public LaunchData(LocalMessageSearch localMessageSearch, LegacyAccountDto legacyAccountDto, MessageReference messageReference, boolean z, boolean z2, int i) {
            legacyAccountDto = (i & 2) != 0 ? null : legacyAccountDto;
            messageReference = (i & 4) != 0 ? null : messageReference;
            z = (i & 8) != 0 ? false : z;
            z2 = (i & 16) != 0 ? false : z2;
            localMessageSearch.getClass();
            this.search = localMessageSearch;
            this.account = legacyAccountDto;
            this.messageReference = messageReference;
            this.noThreading = z;
            this.messageViewOnly = z2;
        }

        public LaunchData(Context context, String str, PriorityQueue priorityQueue, boolean z, boolean z2) {
            context.getClass();
            priorityQueue.getClass();
            this.search = context;
            this.account = str;
            this.messageReference = priorityQueue;
            this.noThreading = z;
            this.messageViewOnly = z2;
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public final /* synthetic */ void onBackStackChangeCommitted(Fragment fragment, boolean z) {
    }

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public final /* synthetic */ void onBackStackChangeStarted(Fragment fragment, boolean z) {
    }
}
