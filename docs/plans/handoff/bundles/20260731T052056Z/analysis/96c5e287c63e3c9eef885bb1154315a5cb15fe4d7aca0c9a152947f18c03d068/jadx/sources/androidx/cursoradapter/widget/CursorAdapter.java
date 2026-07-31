package androidx.cursoradapter.widget;

import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.SuggestionsAdapter;
import androidx.compose.animation.core.Animation;
import kotlin.Unit;
import kotlinx.coroutines.channels.BufferedChannel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable {
    public boolean mAutoRequery;
    public ChangeObserver mChangeObserver;
    public Cursor mCursor;
    public CursorFilter mCursorFilter;
    public MyDataSetObserver mDataSetObserver;
    public boolean mDataValid;
    public int mRowIDColumn;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MyDataSetObserver extends DataSetObserver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ MyDataSetObserver(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) obj;
                    suggestionsAdapter.mDataValid = true;
                    suggestionsAdapter.notifyDataSetChanged();
                    break;
                default:
                    ListPopupWindow listPopupWindow = (ListPopupWindow) obj;
                    if (listPopupWindow.mPopup.isShowing()) {
                        listPopupWindow.show();
                        break;
                    }
                    break;
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) obj;
                    suggestionsAdapter.mDataValid = false;
                    suggestionsAdapter.notifyDataSetInvalidated();
                    break;
                default:
                    ((ListPopupWindow) obj).dismiss();
                    break;
            }
        }
    }

    public abstract void bindView(View view, Cursor cursor);

    public void changeCursor(Cursor cursor) {
        Cursor cursor2 = this.mCursor;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                ChangeObserver changeObserver = this.mChangeObserver;
                if (changeObserver != null) {
                    cursor2.unregisterContentObserver(changeObserver);
                }
                MyDataSetObserver myDataSetObserver = this.mDataSetObserver;
                if (myDataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(myDataSetObserver);
                }
            }
            this.mCursor = cursor;
            if (cursor != null) {
                ChangeObserver changeObserver2 = this.mChangeObserver;
                if (changeObserver2 != null) {
                    cursor.registerContentObserver(changeObserver2);
                }
                MyDataSetObserver myDataSetObserver2 = this.mDataSetObserver;
                if (myDataSetObserver2 != null) {
                    cursor.registerDataSetObserver(myDataSetObserver2);
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
        CursorFilter cursorFilter = this.mCursorFilter;
        if (cursorFilter != null) {
            return cursorFilter;
        }
        CursorFilter cursorFilter2 = new CursorFilter();
        cursorFilter2.mClient = this;
        this.mCursorFilter = cursorFilter2;
        return cursorFilter2;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("this should only be called when the cursor is valid");
            return null;
        }
        if (!this.mCursor.moveToPosition(i)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(i, "couldn't move cursor to position "));
            return null;
        }
        if (view == null) {
            view = newView(viewGroup);
        }
        bindView(view, this.mCursor);
        return view;
    }

    public abstract View newView(ViewGroup viewGroup);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChangeObserver extends ContentObserver {
        public final /* synthetic */ int $r8$classId = 0;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeObserver(SuggestionsAdapter suggestionsAdapter) {
            super(new Handler());
            this.this$0 = suggestionsAdapter;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            switch (this.$r8$classId) {
                case 0:
                    return true;
                default:
                    return super.deliverSelfNotifications();
            }
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Cursor cursor;
            switch (this.$r8$classId) {
                case 0:
                    SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) this.this$0;
                    if (suggestionsAdapter.mAutoRequery && (cursor = suggestionsAdapter.mCursor) != null && !cursor.isClosed()) {
                        suggestionsAdapter.mDataValid = suggestionsAdapter.mCursor.requery();
                        break;
                    }
                    break;
                default:
                    super.onChange(z);
                    break;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChangeObserver(BufferedChannel bufferedChannel, Handler handler) {
            super(handler);
            this.this$0 = bufferedChannel;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            switch (this.$r8$classId) {
                case 1:
                    ((BufferedChannel) this.this$0).mo757trySendJP2dKIU(Unit.INSTANCE);
                    break;
                default:
                    super.onChange(z, uri);
                    break;
            }
        }
    }
}
