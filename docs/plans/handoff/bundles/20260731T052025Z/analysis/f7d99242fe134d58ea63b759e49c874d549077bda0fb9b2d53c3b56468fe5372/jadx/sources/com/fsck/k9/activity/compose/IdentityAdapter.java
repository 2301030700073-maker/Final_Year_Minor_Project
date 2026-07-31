package com.fsck.k9.activity.compose;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.identity.IdentityFormatter;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdentityAdapter extends BaseAdapter {
    public final IdentityFormatter identityFormatter = (IdentityFormatter) CloseableKt.get$default(IdentityFormatter.class);
    public final ArrayList mItems;
    public final LayoutInflater mLayoutInflater;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountHolder {
        public View chip;
        public MaterialTextView name;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IdentityContainer {
        public final LegacyAccountDto account;
        public final Identity identity;

        public IdentityContainer(Identity identity, LegacyAccountDto legacyAccountDto) {
            this.identity = identity;
            this.account = legacyAccountDto;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IdentityHolder {
        public MaterialTextView description;
        public MaterialTextView name;
    }

    public IdentityAdapter(ContextThemeWrapper contextThemeWrapper) {
        this.mLayoutInflater = (LayoutInflater) contextThemeWrapper.getSystemService("layout_inflater");
        ArrayList arrayList = new ArrayList();
        for (LegacyAccountDto legacyAccountDto : ((Preferences) CloseableKt.get$default(Preferences.class)).getAccounts()) {
            arrayList.add(legacyAccountDto);
            Iterator it = ((ArrayList) legacyAccountDto.getIdentities()).iterator();
            while (it.hasNext()) {
                arrayList.add(new IdentityContainer((Identity) it.next(), legacyAccountDto));
            }
        }
        this.mItems = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.mItems.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return !(this.mItems.get(i) instanceof LegacyAccountDto) ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Object obj = this.mItems.get(i);
        boolean z = obj instanceof LegacyAccountDto;
        LayoutInflater layoutInflater = this.mLayoutInflater;
        if (z) {
            if (view == null || !(view.getTag() instanceof AccountHolder)) {
                view = layoutInflater.inflate(R.layout.choose_account_item, viewGroup, false);
                AccountHolder accountHolder = new AccountHolder();
                accountHolder.name = (MaterialTextView) view.findViewById(R.id.name);
                accountHolder.chip = view.findViewById(R.id.chip);
                view.setTag(accountHolder);
            }
            LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
            AccountHolder accountHolder2 = (AccountHolder) view.getTag();
            accountHolder2.name.setText(legacyAccountDto.getDisplayName());
            accountHolder2.chip.setBackgroundColor(legacyAccountDto.getChipColor());
            return view;
        }
        if (!(obj instanceof IdentityContainer)) {
            return null;
        }
        if (view == null || !(view.getTag() instanceof IdentityHolder)) {
            view = layoutInflater.inflate(R.layout.choose_identity_item, viewGroup, false);
            IdentityHolder identityHolder = new IdentityHolder();
            identityHolder.name = (MaterialTextView) view.findViewById(R.id.name);
            identityHolder.description = (MaterialTextView) view.findViewById(R.id.description);
            view.setTag(identityHolder);
        }
        Identity identity = ((IdentityContainer) obj).identity;
        IdentityHolder identityHolder2 = (IdentityHolder) view.getTag();
        identityHolder2.name.setText(identity.description);
        MaterialTextView materialTextView = identityHolder2.description;
        this.identityFormatter.getClass();
        materialTextView.setText(IdentityFormatter.getEmailDisplayName(identity));
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return this.mItems.get(i) instanceof IdentityContainer;
    }
}
