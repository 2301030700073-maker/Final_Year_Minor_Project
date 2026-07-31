package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import androidx.appcompat.widget.SuggestionsAdapter;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.loader.content.Loader$ForceLoadContentObserver;
import androidx.viewpager.widget.ViewPager;
import com.fsck.k9.R;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable {
    public boolean mAutoRequery;
    public Loader$ForceLoadContentObserver mChangeObserver;
    public Cursor mCursor;
    public CursorFilter mCursorFilter;
    public ViewPager.PagerObserver mDataSetObserver;
    public boolean mDataValid;
    public int mRowIDColumn;

    public abstract void bindView(View view, Cursor cursor);

    public void changeCursor(Cursor cursor) {
        Cursor cursor2 = this.mCursor;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                Loader$ForceLoadContentObserver loader$ForceLoadContentObserver = this.mChangeObserver;
                if (loader$ForceLoadContentObserver != null) {
                    cursor2.unregisterContentObserver(loader$ForceLoadContentObserver);
                }
                ViewPager.PagerObserver pagerObserver = this.mDataSetObserver;
                if (pagerObserver != null) {
                    cursor2.unregisterDataSetObserver(pagerObserver);
                }
            }
            this.mCursor = cursor;
            if (cursor != null) {
                Loader$ForceLoadContentObserver loader$ForceLoadContentObserver2 = this.mChangeObserver;
                if (loader$ForceLoadContentObserver2 != null) {
                    cursor.registerContentObserver(loader$ForceLoadContentObserver2);
                }
                ViewPager.PagerObserver pagerObserver2 = this.mDataSetObserver;
                if (pagerObserver2 != null) {
                    cursor.registerDataSetObserver(pagerObserver2);
                }
                this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
                this.mDataValid = true;
                notifyDataSetChanged();
            } else {
                this.mRowIDColumn = -1;
                this.mDataValid = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String convertToString(Cursor cursor);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.mDataValid || (cursor = this.mCursor) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            return null;
        }
        this.mCursor.moveToPosition(i);
        if (view == null) {
            SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) this;
            view = suggestionsAdapter.mInflater.inflate(suggestionsAdapter.mDropDownLayout, viewGroup, false);
        }
        bindView(view, this.mCursor);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.mCursorFilter == null) {
            CursorFilter cursorFilter = new CursorFilter();
            cursorFilter.mClient = this;
            this.mCursorFilter = cursorFilter;
        }
        return this.mCursorFilter;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        Cursor cursor;
        if (!this.mDataValid || (cursor = this.mCursor) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.mCursor;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        Cursor cursor;
        if (this.mDataValid && (cursor = this.mCursor) != null && cursor.moveToPosition(i)) {
            return this.mCursor.getLong(this.mRowIDColumn);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("this should only be called when the cursor is valid");
            return null;
        }
        if (!this.mCursor.moveToPosition(i)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("couldn't move cursor to position ", i));
            return null;
        }
        if (view == null) {
            SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) this;
            view = suggestionsAdapter.mInflater.inflate(suggestionsAdapter.mLayout, viewGroup, false);
            view.setTag(new SuggestionsAdapter.ChildViewCache(view));
            ((ImageView) view.findViewById(R.id.edit_query)).setImageResource(suggestionsAdapter.mCommitIconResId);
        }
        bindView(view, this.mCursor);
        return view;
    }
}
