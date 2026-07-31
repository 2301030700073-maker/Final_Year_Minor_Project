package androidx.emoji2.text.flatbuffer;

import android.os.Build;
import android.view.View;
import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import io.noties.markwon.BlockHandlerDef;
import java.nio.ByteBuffer;
import kotlin.collections.builders.MapBuilder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Table {
    public Object bb;
    public int bb_pos;
    public int vtable_size;
    public int vtable_start;

    public Table() {
        if (BlockHandlerDef.DEFAULT == null) {
            BlockHandlerDef.DEFAULT = new BlockHandlerDef(12);
        }
    }

    public int __offset(int i) {
        if (i < this.vtable_size) {
            return ((ByteBuffer) this.bb).getShort(this.vtable_start + i);
        }
        return 0;
    }

    public void checkForComodification$kotlin_stdlib() {
        if (((MapBuilder) this.bb).modCount == this.vtable_size) {
            return;
        }
        Arrangement$$ExternalSyntheticLambda0.m();
    }

    public abstract Object frameworkGet(View view);

    public abstract void frameworkSet(View view, Object obj);

    public boolean hasNext() {
        return this.bb_pos < ((MapBuilder) this.bb).length;
    }

    public void initNext$kotlin_stdlib() {
        int[] iArr;
        MapBuilder mapBuilder = (MapBuilder) this.bb;
        while (this.bb_pos < mapBuilder.length) {
            iArr = mapBuilder.presenceArray;
            int i = this.bb_pos;
            if (iArr[i] >= 0) {
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Call next() before removing element from the iterator.");
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
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(this.vtable_size, view);
        }
    }

    public abstract boolean shouldUpdate(Object obj, Object obj2);
}
