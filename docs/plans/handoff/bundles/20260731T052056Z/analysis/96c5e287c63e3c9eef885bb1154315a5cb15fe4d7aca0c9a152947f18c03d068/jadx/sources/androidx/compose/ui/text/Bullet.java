package androidx.compose.ui.text;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Bullet implements AnnotatedString.Annotation {
    public static final Bullet Default;
    public static final long DefaultIndentation = ContextsKt.pack(1.0f, 8589934592L);
    public final long height;
    public final long padding;
    public final long width;

    static {
        long pack = ContextsKt.pack(0.25f, 8589934592L);
        Default = new Bullet(pack, pack, ContextsKt.pack(0.25f, 8589934592L));
    }

    public Bullet(long j, long j2, long j3) {
        this.width = j;
        this.height = j2;
        this.padding = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Bullet)) {
            return false;
        }
        Bullet bullet = (Bullet) obj;
        if (!TextUnit.m723equalsimpl0(this.width, bullet.width) || !TextUnit.m723equalsimpl0(this.height, bullet.height)) {
            return false;
        }
        TextUnit.m723equalsimpl0(this.padding, bullet.padding);
        return false;
    }

    public final int hashCode() {
        int hashCode = CircleShape.INSTANCE.hashCode() * 31;
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return Fill.INSTANCE.hashCode() + Animation.CC.m((Modifier.CC.m(this.padding) + ((Modifier.CC.m(this.height) + ((Modifier.CC.m(this.width) + hashCode) * 31)) * 31)) * 961, Float.NaN, 31);
    }

    public final String toString() {
        return "Bullet(shape=" + CircleShape.INSTANCE + ", size=(" + ((Object) TextUnit.m727toStringimpl(this.width)) + ", " + ((Object) TextUnit.m727toStringimpl(this.height)) + "), padding=" + ((Object) TextUnit.m727toStringimpl(this.padding)) + ", brush=null, alpha=NaN, drawStyle=" + Fill.INSTANCE + ')';
    }
}
