package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.R;
import com.android.contacts.activities.ActionBarAdapter;
import com.android.contacts.group.GroupMembersFragment;
import com.android.contacts.list.MultiSelectEntryContactListAdapter;
import com.android.contacts.logging.Logger;
import com.android.contacts.logging.SearchState;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.GoogleAccountType;
import java.util.ArrayList;
import java.util.TreeSet;

/* loaded from: classes.dex */
public abstract class MultiSelectContactsListFragment<T extends MultiSelectEntryContactListAdapter> extends ContactEntryListFragment<T> implements MultiSelectEntryContactListAdapter.SelectedContactsListener {
    protected boolean mAnimateOnLoad;
    private OnCheckBoxListActionListener mCheckBoxListListener;

    public interface OnCheckBoxListActionListener {
        void onSelectedContactIdsChanged();

        void onStartDisplayingCheckBoxes();

        void onStopDisplayingCheckBoxes();
    }

    public ActionBarAdapter getActionBarAdapter() {
        return null;
    }

    public void setCheckBoxListListener(OnCheckBoxListActionListener onCheckBoxListActionListener) {
        this.mCheckBoxListListener = onCheckBoxListActionListener;
    }

    public void setAnimateOnLoad(boolean z) {
        this.mAnimateOnLoad = z;
    }

    @Override // com.android.contacts.list.MultiSelectEntryContactListAdapter.SelectedContactsListener
    public void onSelectedContactsChanged() {
        OnCheckBoxListActionListener onCheckBoxListActionListener = this.mCheckBoxListListener;
        if (onCheckBoxListActionListener != null) {
            onCheckBoxListActionListener.onSelectedContactIdsChanged();
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle == null && this.mAnimateOnLoad) {
            setLayoutAnimation(getListView(), R.anim.slide_and_fade_in_layout_animation);
        }
        return getView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            ((MultiSelectEntryContactListAdapter) getAdapter()).setSelectedContactIds((TreeSet) bundle.getSerializable("selected_contacts"));
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        OnCheckBoxListActionListener onCheckBoxListActionListener = this.mCheckBoxListListener;
        if (onCheckBoxListActionListener != null) {
            onCheckBoxListActionListener.onSelectedContactIdsChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TreeSet<Long> getSelectedContactIds() {
        return ((MultiSelectEntryContactListAdapter) getAdapter()).getSelectedContactIds();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long[] getSelectedContactIdsArray() {
        return ((MultiSelectEntryContactListAdapter) getAdapter()).getSelectedContactIdsArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void configureAdapter() {
        super.configureAdapter();
        ((MultiSelectEntryContactListAdapter) getAdapter()).setSelectedContactsListener(this);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("selected_contacts", getSelectedContactIds());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void displayCheckBoxes(boolean z) {
        if (getAdapter() != 0) {
            ((MultiSelectEntryContactListAdapter) getAdapter()).setDisplayCheckBoxes(z);
            if (z) {
                return;
            }
            clearCheckBoxes();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clearCheckBoxes() {
        ((MultiSelectEntryContactListAdapter) getAdapter()).setSelectedContactIds(new TreeSet<>());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.ContactEntryListFragment
    protected boolean onItemLongClick(int i, long j) {
        int size = ((MultiSelectEntryContactListAdapter) getAdapter()).getSelectedContactIds().size();
        long contactId = getContactId(i);
        int partitionForPosition = ((MultiSelectEntryContactListAdapter) getAdapter()).getPartitionForPosition(i);
        if (contactId >= 0 && partitionForPosition == 0) {
            OnCheckBoxListActionListener onCheckBoxListActionListener = this.mCheckBoxListListener;
            if (onCheckBoxListActionListener != null) {
                onCheckBoxListActionListener.onStartDisplayingCheckBoxes();
            }
            ((MultiSelectEntryContactListAdapter) getAdapter()).toggleSelectionOfContactId(contactId);
            Logger.logListEvent(3, getListType(), ((MultiSelectEntryContactListAdapter) getAdapter()).getCount(), i, 1);
            int headerViewsCount = (i + getListView().getHeaderViewsCount()) - getListView().getFirstVisiblePosition();
            if (headerViewsCount >= 0 && headerViewsCount < getListView().getChildCount()) {
                getListView().getChildAt(headerViewsCount).sendAccessibilityEvent(1);
            }
        }
        int size2 = ((MultiSelectEntryContactListAdapter) getAdapter()).getSelectedContactIds().size();
        OnCheckBoxListActionListener onCheckBoxListActionListener2 = this.mCheckBoxListListener;
        if (onCheckBoxListActionListener2 != null && size != 0 && size2 == 0) {
            onCheckBoxListActionListener2.onStopDisplayingCheckBoxes();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void onItemClick(int i, long j) {
        long contactId = getContactId(i);
        if (contactId < 0) {
            return;
        }
        if (((MultiSelectEntryContactListAdapter) getAdapter()).isDisplayingCheckBoxes()) {
            ((MultiSelectEntryContactListAdapter) getAdapter()).toggleSelectionOfContactId(contactId);
        }
        if (this.mCheckBoxListListener == null || ((MultiSelectEntryContactListAdapter) getAdapter()).getSelectedContactIds().size() != 0) {
            return;
        }
        this.mCheckBoxListListener.onStopDisplayingCheckBoxes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long getContactId(int i) {
        int contactColumnIdIndex = ((MultiSelectEntryContactListAdapter) getAdapter()).getContactColumnIdIndex();
        Cursor cursor = (Cursor) ((MultiSelectEntryContactListAdapter) getAdapter()).getItem(i);
        if (cursor != null && cursor.getColumnCount() > contactColumnIdIndex) {
            return cursor.getLong(contactColumnIdIndex);
        }
        Log.w("MultiContactsList", "Failed to get contact ID from cursor column " + contactColumnIdIndex);
        return -1L;
    }

    public SearchState createSearchState() {
        return createSearchState(-1);
    }

    public SearchState createSearchStateForSearchResultClick(int i) {
        return createSearchState(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SearchState createSearchState(int i) {
        MultiSelectEntryContactListAdapter multiSelectEntryContactListAdapter = (MultiSelectEntryContactListAdapter) getAdapter();
        if (multiSelectEntryContactListAdapter == null) {
            return null;
        }
        SearchState searchState = new SearchState();
        searchState.queryLength = multiSelectEntryContactListAdapter.getQueryString() == null ? 0 : multiSelectEntryContactListAdapter.getQueryString().length();
        searchState.numPartitions = multiSelectEntryContactListAdapter.getPartitionCount();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < multiSelectEntryContactListAdapter.getPartitionCount(); i2++) {
            Cursor cursor = multiSelectEntryContactListAdapter.getCursor(i2);
            if (cursor == null || cursor.isClosed()) {
                arrayList.clear();
                break;
            }
            arrayList.add(Integer.valueOf(cursor.getCount()));
        }
        if (!arrayList.isEmpty()) {
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                i3 += ((Integer) arrayList.get(i4)).intValue();
            }
            searchState.numResults = i3;
        }
        if (i >= 0) {
            searchState.selectedPartition = multiSelectEntryContactListAdapter.getPartitionForPosition(i);
            searchState.selectedIndexInPartition = multiSelectEntryContactListAdapter.getOffsetInPartition(i);
            Cursor cursor2 = multiSelectEntryContactListAdapter.getCursor(searchState.selectedPartition);
            searchState.numResultsInSelectedPartition = (cursor2 == null || cursor2.isClosed()) ? -1 : cursor2.getCount();
            if (!arrayList.isEmpty()) {
                int i5 = 0;
                for (int i6 = 0; i6 < searchState.selectedPartition; i6++) {
                    i5 += ((Integer) arrayList.get(i6)).intValue();
                }
                searchState.selectedIndex = i5 + searchState.selectedIndexInPartition;
            }
        }
        return searchState;
    }

    protected void setLayoutAnimation(final ViewGroup viewGroup, int i) {
        if (viewGroup == null) {
            return;
        }
        viewGroup.setLayoutAnimationListener(new Animation.AnimationListener(this) { // from class: com.android.contacts.list.MultiSelectContactsListFragment.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                viewGroup.setLayoutAnimation(null);
            }
        });
        viewGroup.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(getActivity(), i));
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        View findViewById = getView().findViewById(R.id.account_filter_header_container);
        if (findViewById == null) {
            return;
        }
        if (absListView != null && absListView.getChildAt(0) != null && absListView.getChildAt(0).getTop() < 0) {
            i++;
        }
        if (i == 0) {
            ViewCompat.setElevation(findViewById, ContactPhotoManager.OFFSET_DEFAULT);
        } else {
            ViewCompat.setElevation(findViewById, getResources().getDimension(R.dimen.contact_list_header_elevation));
        }
    }

    protected void bindListHeaderCustom(View view, View view2) {
        bindListHeaderCommon(view, view2);
        TextView textView = (TextView) view2.findViewById(R.id.account_filter_header);
        textView.setText(R.string.listCustomView);
        textView.setAllCaps(false);
        ((ImageView) view2.findViewById(R.id.account_filter_icon)).setVisibility(8);
    }

    protected void bindListHeader(Context context, View view, View view2, AccountWithDataSet accountWithDataSet, int i) {
        String quantityString;
        if (i < 0) {
            hideHeaderAndAddPadding(context, view, view2);
            return;
        }
        bindListHeaderCommon(view, view2);
        AccountType accountType = AccountTypeManager.getInstance(context).getAccountType(accountWithDataSet.type, accountWithDataSet.dataSet);
        TextView textView = (TextView) view2.findViewById(R.id.account_filter_header);
        if (shouldShowAccountName(accountType)) {
            quantityString = String.format(context.getResources().getQuantityString(R.plurals.contacts_count_with_account, i), Integer.valueOf(i), accountWithDataSet.name);
        } else {
            quantityString = context.getResources().getQuantityString(R.plurals.contacts_count, i, Integer.valueOf(i));
        }
        textView.setText(quantityString);
        textView.setAllCaps(false);
        Drawable displayIcon = accountType != null ? accountType.getDisplayIcon(context) : null;
        ImageView imageView = (ImageView) view2.findViewById(R.id.account_filter_icon);
        if (accountType instanceof GoogleAccountType) {
            imageView.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_size);
            imageView.getLayoutParams().width = getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_size);
            setMargins(imageView, getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_left_margin), getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_right_margin));
        } else {
            imageView.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_size_alt);
            imageView.getLayoutParams().width = getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_size_alt);
            setMargins(imageView, getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_left_margin_alt), getResources().getDimensionPixelOffset(R.dimen.contact_browser_list_header_icon_right_margin_alt));
        }
        imageView.requestLayout();
        imageView.setVisibility(0);
        imageView.setImageDrawable(displayIcon);
    }

    private boolean shouldShowAccountName(AccountType accountType) {
        return (accountType.isGroupMembershipEditable() && (this instanceof GroupMembersFragment)) || GoogleAccountType.ACCOUNT_TYPE.equals(accountType.accountType);
    }

    private void setMargins(View view, int i, int i2) {
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMarginStart(i);
            marginLayoutParams.setMarginEnd(i2);
            view.setLayoutParams(marginLayoutParams);
            view.requestLayout();
        }
    }

    private void bindListHeaderCommon(View view, View view2) {
        view2.setVisibility(0);
        setListViewPaddingTop(view, 0);
    }

    protected void hideHeaderAndAddPadding(Context context, View view, View view2) {
        view2.setVisibility(8);
        setListViewPaddingTop(view, context.getResources().getDimensionPixelSize(R.dimen.contact_browser_list_item_padding_top_or_bottom));
    }

    private void setListViewPaddingTop(View view, int i) {
        view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), view.getPaddingBottom());
    }
}
