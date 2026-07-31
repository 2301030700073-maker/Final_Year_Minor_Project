package com.fsck.k9.activity;

import android.R;
import android.view.View;
import android.widget.ListView;
import com.fsck.k9.ui.base.BaseActivity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseListActivity extends BaseActivity {
    public ListView list;

    public final ListView getListView() {
        if (this.list == null) {
            this.list = (ListView) findViewById(R.id.list);
            View findViewById = findViewById(R.id.empty);
            if (findViewById != null) {
                this.list.setEmptyView(findViewById);
            }
        }
        return this.list;
    }
}
