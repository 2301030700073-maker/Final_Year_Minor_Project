package androidx.fragment.app;

import android.view.MenuItem;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.Consumer;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.customview.widget.ViewDragHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.window.layout.WindowLayoutInfo;
import com.bytehamster.lib.preferencesearch.SearchPreferenceActionView;
import com.bytehamster.lib.preferencesearch.SearchPreferenceFragment;
import com.fsck.k9.R;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.account.AccountSettingsDataStore;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.ClearTextEndIconDelegate;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Fragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Fragment$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Fragment fragment = (Fragment) obj;
                fragment.mViewLifecycleOwner.mSavedStateRegistryController.performRestore(fragment.mSavedViewRegistryState);
                fragment.mSavedViewRegistryState = null;
                return;
            case 1:
                Iterator it = ((FragmentManager) obj).mBackStackChangeListeners.iterator();
                while (it.hasNext()) {
                    ((FragmentManager.OnBackStackChangedListener) it.next()).getClass();
                }
                return;
            case 2:
                ProcessLifecycleOwner processLifecycleOwner = (ProcessLifecycleOwner) obj;
                LifecycleRegistry lifecycleRegistry = processLifecycleOwner.registry;
                if (processLifecycleOwner.resumedCounter == 0) {
                    processLifecycleOwner.pauseSent = true;
                    lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
                }
                if (processLifecycleOwner.startedCounter == 0 && processLifecycleOwner.pauseSent) {
                    lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
                    processLifecycleOwner.stopSent = true;
                    return;
                }
                return;
            case 3:
                ((Consumer) obj).accept(new WindowLayoutInfo(EmptyList.INSTANCE));
                return;
            case 4:
                Job job = (Job) obj;
                if (job != null) {
                    job.cancel(null);
                    return;
                }
                return;
            case 5:
                SearchPreferenceFragment searchPreferenceFragment = (SearchPreferenceFragment) obj;
                ((EditText) searchPreferenceFragment.viewHolder.authority).requestFocus();
                InputMethodManager inputMethodManager = (InputMethodManager) searchPreferenceFragment.getActivity().getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput((EditText) searchPreferenceFragment.viewHolder.authority, 1);
                    return;
                }
                return;
            case 6:
                NotificationChannelManager.$r8$lambda$m3LNel5iYKrrYmwu_gXHemecIYY((NotificationChannelManager) obj);
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AppCompatActivity activity = ((LegacyMessageListFragment) obj).getActivity();
                if (activity != null) {
                    Toast.makeText(activity, R.string.remote_search_error, 1).show();
                    return;
                }
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AppCompatActivity activity2 = ((MessageListFragment) obj).getActivity();
                if (activity2 != null) {
                    Toast.makeText(activity2, R.string.remote_search_error, 1).show();
                    return;
                }
                return;
            case 9:
                MessageViewFragment messageViewFragment = (MessageViewFragment) obj;
                if (messageViewFragment.isAdded()) {
                    FragmentManager parentFragmentManager = messageViewFragment.getParentFragmentManager();
                    parentFragmentManager.execPendingActions(true);
                    parentFragmentManager.forcePostponedTransactions();
                    DialogFragment dialogFragment = (DialogFragment) parentFragmentManager.findFragmentByTag(String.format(Locale.US, "dialog-%d", Arrays.copyOf(new Object[]{Integer.valueOf(R.id.dialog_attachment_progress)}, 1)));
                    if (dialogFragment != null) {
                        dialogFragment.dismissAllowingStateLoss();
                        return;
                    }
                    return;
                }
                return;
            case 10:
                AccountSettingsDataStore accountSettingsDataStore = (AccountSettingsDataStore) obj;
                boolean z = accountSettingsDataStore.notificationSettingsChanged;
                LegacyAccountDto legacyAccountDto = accountSettingsDataStore.account;
                if (z) {
                    accountSettingsDataStore.notificationChannelManager.recreateMessagesNotificationChannel(legacyAccountDto);
                    accountSettingsDataStore.notificationController.restoreNewMailNotifications(IntOffsetKt.listOf(legacyAccountDto));
                }
                accountSettingsDataStore.notificationSettingsChanged = false;
                accountSettingsDataStore.preferences.saveAccount(legacyAccountDto);
                return;
            case 11:
                GeneralSettingsActivity generalSettingsActivity = (GeneralSettingsActivity) obj;
                MenuItem menuItem = generalSettingsActivity.searchPreferenceMenuItem;
                if (menuItem == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceMenuItem");
                    throw null;
                }
                menuItem.expandActionView();
                SearchPreferenceActionView searchPreferenceActionView = generalSettingsActivity.searchPreferenceActionView;
                if (searchPreferenceActionView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceActionView");
                    throw null;
                }
                String str = generalSettingsActivity.searchQuery;
                if (str != null) {
                    searchPreferenceActionView.setQuery$1(str);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("searchQuery");
                    throw null;
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                MaterialButton.m948$r8$lambda$082l6qUlajHJ6tYsmjt9Msiwck((MaterialButton) obj);
                return;
            case 13:
                ((CarouselLayoutManager) obj).requestLayout();
                return;
            case 14:
                RemoteViewsCompat$RemoteCollectionItems remoteViewsCompat$RemoteCollectionItems = (RemoteViewsCompat$RemoteCollectionItems) obj;
                remoteViewsCompat$RemoteCollectionItems.mHasStableIds = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) remoteViewsCompat$RemoteCollectionItems.mViews;
                ViewDragHelper viewDragHelper = sideSheetBehavior.viewDragHelper;
                if (viewDragHelper != null && viewDragHelper.continueSettling()) {
                    remoteViewsCompat$RemoteCollectionItems.continueSettlingToState(remoteViewsCompat$RemoteCollectionItems.mViewTypeCount);
                    return;
                } else {
                    if (sideSheetBehavior.state == 2) {
                        sideSheetBehavior.setStateInternal(remoteViewsCompat$RemoteCollectionItems.mViewTypeCount);
                        return;
                    }
                    return;
                }
            case OffsetKt.Horizontal /* 15 */:
                ((ClearTextEndIconDelegate) obj).animateIcon(true);
                return;
            case 16:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                boolean isPopupShowing = dropdownMenuEndIconDelegate.autoCompleteTextView.isPopupShowing();
                dropdownMenuEndIconDelegate.setEndIconChecked(isPopupShowing);
                dropdownMenuEndIconDelegate.dropdownPopupDirty = isPopupShowing;
                return;
            default:
                ((TextInputLayout) obj).editText.requestLayout();
                return;
        }
    }
}
