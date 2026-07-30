package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;

/* compiled from: Path.kt */
/* loaded from: classes.dex */
public interface Path {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Path.kt */
    public enum Direction {
        CounterClockwise,
        Clockwise
    }

    /* renamed from: addPath-Uv8p0NA */
    void mo1247addPathUv8p0NA(Path path, long j);

    void addRect(Rect rect, Direction direction);

    void addRoundRect(RoundRect roundRect, Direction direction);

    void close();

    void cubicTo(float f, float f2, float f3, float f4, float f5, float f6);

    Rect getBounds();

    /* renamed from: getFillType-Rg-k1Os */
    int mo1248getFillTypeRgk1Os();

    boolean isConvex();

    boolean isEmpty();

    void lineTo(float f, float f2);

    void moveTo(float f, float f2);

    /* renamed from: op-N5in7k0 */
    boolean mo1249opN5in7k0(Path path, Path path2, int i);

    void relativeCubicTo(float f, float f2, float f3, float f4, float f5, float f6);

    void relativeLineTo(float f, float f2);

    void reset();

    void rewind();

    /* renamed from: setFillType-oQ8Xj4U */
    void mo1250setFillTypeoQ8Xj4U(int i);

    /* renamed from: translate-k-4lQ0M */
    void mo1251translatek4lQ0M(long j);

    /* compiled from: Path.kt */
    /* renamed from: androidx.compose.ui.graphics.Path$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = Path.Companion;
        }

        public static /* synthetic */ void addRect$default(Path path, Rect rect, Direction direction, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRect");
            }
            if ((i & 2) != 0) {
                direction = Direction.CounterClockwise;
            }
            path.addRect(rect, direction);
        }

        public static /* synthetic */ void addRoundRect$default(Path path, RoundRect roundRect, Direction direction, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRoundRect");
            }
            if ((i & 2) != 0) {
                direction = Direction.CounterClockwise;
            }
            path.addRoundRect(roundRect, direction);
        }

        /* renamed from: addPath-Uv8p0NA$default, reason: not valid java name */
        public static /* synthetic */ void m1391addPathUv8p0NA$default(Path path, Path path2, long j, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addPath-Uv8p0NA");
            }
            if ((i & 2) != 0) {
                j = Offset.Companion.m1179getZeroF1C5BW0();
            }
            path.mo1247addPathUv8p0NA(path2, j);
        }
    }

    /* compiled from: Path.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
