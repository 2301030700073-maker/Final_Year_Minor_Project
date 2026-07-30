package b.l;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.preference.Preference;
import com.android.systemui.shared.R;

/* renamed from: b.l.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnCreateContextMenuListenerC0156q implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final Preference f1067a;

    public ViewOnCreateContextMenuListenerC0156q(Preference preference) {
        this.f1067a = preference;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        CharSequence summary = this.f1067a.getSummary();
        if (!this.f1067a.mCopyingEnabled || TextUtils.isEmpty(summary)) {
            return;
        }
        contextMenu.setHeaderTitle(summary);
        contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        ClipboardManager clipboardManager = (ClipboardManager) this.f1067a.mContext.getSystemService("clipboard");
        CharSequence summary = this.f1067a.getSummary();
        clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", summary));
        Context context = this.f1067a.mContext;
        Toast.makeText(context, context.getString(R.string.preference_copied, summary), 0).show();
        return true;
    }
}
