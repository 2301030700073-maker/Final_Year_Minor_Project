package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.widget.BaseAdapter;
import android.widget.Filter;
import com.fsck.k9.activity.compose.RecipientAdapter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CursorFilter extends Filter {
    public final /* synthetic */ int $r8$classId = 0;
    public BaseAdapter mClient;

    public CursorFilter(RecipientAdapter recipientAdapter) {
        this.mClient = recipientAdapter;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((CursorAdapter) this.mClient).convertToString((Cursor) obj);
            default:
                return super.convertResultToString(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r4) {
        /*
            r3 = this;
            int r0 = r3.$r8$classId
            r1 = 0
            switch(r0) {
                case 0: goto L1f;
                default: goto L6;
            }
        L6:
            android.widget.BaseAdapter r3 = r3.mClient
            com.fsck.k9.activity.compose.RecipientAdapter r3 = (com.fsck.k9.activity.compose.RecipientAdapter) r3
            java.util.List r4 = r3.recipients
            if (r4 != 0) goto Lf
            goto L1e
        Lf:
            android.widget.Filter$FilterResults r1 = new android.widget.Filter$FilterResults
            r1.<init>()
            java.util.List r3 = r3.recipients
            r1.values = r3
            int r3 = r3.size()
            r1.count = r3
        L1e:
            return r1
        L1f:
            android.widget.BaseAdapter r3 = r3.mClient
            androidx.cursoradapter.widget.CursorAdapter r3 = (androidx.cursoradapter.widget.CursorAdapter) r3
            androidx.appcompat.widget.SuggestionsAdapter r3 = (androidx.appcompat.widget.SuggestionsAdapter) r3
            androidx.appcompat.widget.SearchView r0 = r3.mSearchView
            if (r4 != 0) goto L2c
            java.lang.String r4 = ""
            goto L30
        L2c:
            java.lang.String r4 = r4.toString()
        L30:
            int r2 = r0.getVisibility()
            if (r2 != 0) goto L51
            int r0 = r0.getWindowVisibility()
            if (r0 == 0) goto L3d
            goto L51
        L3d:
            android.app.SearchableInfo r0 = r3.mSearchable     // Catch: java.lang.RuntimeException -> L49
            android.database.Cursor r3 = r3.getSearchManagerSuggestions(r0, r4)     // Catch: java.lang.RuntimeException -> L49
            if (r3 == 0) goto L51
            r3.getCount()     // Catch: java.lang.RuntimeException -> L49
            goto L52
        L49:
            r3 = move-exception
            java.lang.String r4 = "SuggestionsAdapter"
            java.lang.String r0 = "Search suggestions query threw an exception."
            android.util.Log.w(r4, r0, r3)
        L51:
            r3 = r1
        L52:
            android.widget.Filter$FilterResults r4 = new android.widget.Filter$FilterResults
            r4.<init>()
            if (r3 == 0) goto L62
            int r0 = r3.getCount()
            r4.count = r0
            r4.values = r3
            goto L67
        L62:
            r3 = 0
            r4.count = r3
            r4.values = r1
        L67:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.cursoradapter.widget.CursorFilter.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        switch (this.$r8$classId) {
            case 0:
                CursorAdapter cursorAdapter = (CursorAdapter) this.mClient;
                Cursor cursor = cursorAdapter.mCursor;
                Object obj = filterResults.values;
                if (obj != null && obj != cursor) {
                    cursorAdapter.changeCursor((Cursor) obj);
                    break;
                }
                break;
            default:
                ((RecipientAdapter) this.mClient).notifyDataSetChanged();
                break;
        }
    }

    public /* synthetic */ CursorFilter() {
    }
}
