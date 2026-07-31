package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import kotlin.collections.builders.MapBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ActionMode {
    public final /* synthetic */ int $r8$classId = 0;
    public Object mTag;
    public boolean mTitleOptionalHint;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem);

        boolean onCreateActionMode(ActionMode actionMode, Menu menu);

        void onDestroyActionMode(ActionMode actionMode);

        boolean onPrepareActionMode(ActionMode actionMode, Menu menu);
    }

    public ActionMode(String str, boolean z) {
        this.mTag = str;
        this.mTitleOptionalHint = z;
    }

    public Integer compareTo(ActionMode actionMode) {
        actionMode.getClass();
        MapBuilder mapBuilder = Visibilities.ORDERED_VISIBILITIES;
        if (this == actionMode) {
            return 0;
        }
        MapBuilder mapBuilder2 = Visibilities.ORDERED_VISIBILITIES;
        Integer num = (Integer) mapBuilder2.get(this);
        Integer num2 = (Integer) mapBuilder2.get(actionMode);
        if (num == null || num2 == null || num.equals(num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public abstract void finish();

    public abstract View getCustomView();

    public String getInternalDisplayName() {
        return (String) this.mTag;
    }

    public abstract MenuBuilder getMenu();

    public abstract MenuInflater getMenuInflater();

    public abstract CharSequence getSubtitle();

    public abstract CharSequence getTitle();

    public abstract void invalidate();

    public abstract boolean isTitleOptional();

    public abstract void setCustomView(View view);

    public abstract void setSubtitle(int i);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setTitle(int i);

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setTitleOptionalHint(boolean z);

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return getInternalDisplayName();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ActionMode() {
    }

    public ActionMode normalize() {
        return this;
    }
}
