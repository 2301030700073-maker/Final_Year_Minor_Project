package com.fsck.k9.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.ChooseIdentity;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.Identity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ManageIdentities extends ChooseIdentity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mIdentitiesChanged = false;

    public final void editItem(int i) {
        Intent intent = new Intent(this, (Class<?>) EditIdentity.class);
        intent.putExtra("com.fsck.k9.EditIdentity_account", this.mAccount.uuid);
        intent.putExtra("com.fsck.k9.EditIdentity_identity", this.mAccount.getIdentity(i));
        intent.putExtra("com.fsck.k9.EditIdentity_identity_index", i);
        startActivityForResult(intent, 1);
    }

    @Override // android.app.Activity
    public final boolean onContextItemSelected(MenuItem menuItem) {
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.edit) {
            editItem(adapterContextMenuInfo.position);
        } else if (itemId == R.id.up) {
            int i = adapterContextMenuInfo.position;
            if (i > 0) {
                this.identities.add(adapterContextMenuInfo.position - 1, (Identity) this.identities.remove(i));
                this.mIdentitiesChanged = true;
                refreshView();
            }
        } else if (itemId == R.id.down) {
            if (adapterContextMenuInfo.position < this.identities.size() - 1) {
                this.identities.add(adapterContextMenuInfo.position + 1, (Identity) this.identities.remove(adapterContextMenuInfo.position));
                this.mIdentitiesChanged = true;
                refreshView();
            }
        } else if (itemId == R.id.top) {
            this.identities.add(0, (Identity) this.identities.remove(adapterContextMenuInfo.position));
            this.mIdentitiesChanged = true;
            refreshView();
        } else if (itemId == R.id.remove) {
            if (this.identities.size() > 1) {
                this.identities.remove(adapterContextMenuInfo.position);
                this.mIdentitiesChanged = true;
                refreshView();
            } else {
                Toast.makeText(this, getString(R.string.no_removable_identity), 1).show();
            }
        }
        return true;
    }

    @Override // com.fsck.k9.activity.ChooseIdentity, com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.manage_identities_title);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.setHeaderTitle(R.string.manage_identities_context_menu_title);
        getMenuInflater().inflate(R.menu.manage_identities_context, contextMenu);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.manage_identities_option, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.new_identity) {
            Intent intent = new Intent(this, (Class<?>) EditIdentity.class);
            intent.putExtra("com.fsck.k9.EditIdentity_account", this.mAccount.uuid);
            startActivityForResult(intent, 1);
        } else {
            if (menuItem.getItemId() != 16908332) {
                return super.onOptionsItemSelected(menuItem);
            }
            finish();
        }
        return true;
    }

    @Override // com.fsck.k9.activity.ChooseIdentity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        refreshView();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStop() {
        if (this.mIdentitiesChanged) {
            this.mAccount.setIdentities(this.identities);
            ((Preferences) CloseableKt.get$default(Preferences.class)).saveAccount(this.mAccount);
        }
        super.onStop();
    }

    @Override // com.fsck.k9.activity.ChooseIdentity
    public final void setupClickListeners() {
        getListView().setOnItemClickListener(new ChooseIdentity.AnonymousClass1(3, this));
        registerForContextMenu(getListView());
    }
}
