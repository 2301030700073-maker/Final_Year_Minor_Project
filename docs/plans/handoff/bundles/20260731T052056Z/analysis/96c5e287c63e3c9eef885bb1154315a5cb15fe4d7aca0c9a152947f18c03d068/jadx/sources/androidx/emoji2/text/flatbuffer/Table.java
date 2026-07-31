package androidx.emoji2.text.flatbuffer;

import android.os.Build;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.work.impl.AutoMigration_14_15;
import java.nio.ByteBuffer;
import java.util.ConcurrentModificationException;
import kotlin.collections.builders.MapBuilder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Table {
    public Object bb;
    public int bb_pos;
    public int vtable_size;
    public int vtable_start;

    public Table() {
        if (AutoMigration_14_15.DEFAULT == null) {
            AutoMigration_14_15.DEFAULT = new AutoMigration_14_15(10);
        }
    }

    public int __offset(int i) {
        if (i < this.vtable_size) {
            return ((ByteBuffer) this.bb).getShort(this.vtable_start + i);
        }
        return 0;
    }

    public void checkForComodification$kotlin_stdlib() {
        if (((MapBuilder) this.bb).modCount != this.vtable_size) {
            throw new ConcurrentModificationException();
        }
    }

    public abstract Object frameworkGet(View view);

    public abstract void frameworkSet(View view, Object obj);

    public boolean hasNext() {
        return this.bb_pos < ((MapBuilder) this.bb).length;
    }

    public void initNext$kotlin_stdlib() {
        while (true) {
            int i = this.bb_pos;
            MapBuilder mapBuilder = (MapBuilder) this.bb;
            if (i >= mapBuilder.length || mapBuilder.presenceArray[i] >= 0) {
                return;
            } else {
                this.bb_pos = i + 1;
            }
        }
    }

    public void remove() {
        MapBuilder mapBuilder = (MapBuilder) this.bb;
        checkForComodification$kotlin_stdlib();
        if (this.vtable_start == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Call next() before removing element from the iterator.");
            return;
        }
        mapBuilder.checkIsMutable$kotlin_stdlib();
        mapBuilder.removeEntryAt(this.vtable_start);
        this.vtable_start = -1;
        this.vtable_size = mapBuilder.modCount;
    }

    public void set(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.vtable_start) {
            frameworkSet(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.vtable_start) {
            tag = frameworkGet(view);
        } else {
            tag = view.getTag(this.bb_pos);
            if (!((Class) this.bb).isInstance(tag)) {
                tag = null;
            }
        }
        if (shouldUpdate(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateInternal = ViewCompat.getAccessibilityDelegateInternal(view);
            AccessibilityDelegateCompat accessibilityDelegateCompat = accessibilityDelegateInternal != null ? accessibilityDelegateInternal instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter ? ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegateInternal).mCompat : new AccessibilityDelegateCompat(accessibilityDelegateInternal) : null;
            if (accessibilityDelegateCompat == null) {
                accessibilityDelegateCompat = new AccessibilityDelegateCompat();
            }
            ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateCompat);
            view.setTag(this.bb_pos, obj);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, this.vtable_size);
        }
    }

    public abstract boolean shouldUpdate(Object obj, Object obj2);
}
