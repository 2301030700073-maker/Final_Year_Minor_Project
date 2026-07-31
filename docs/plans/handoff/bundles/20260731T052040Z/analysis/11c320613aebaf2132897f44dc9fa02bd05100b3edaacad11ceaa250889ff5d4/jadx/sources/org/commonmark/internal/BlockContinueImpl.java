package org.commonmark.internal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BlockContinueImpl {
    public final boolean finalize;
    public final int newColumn;
    public final int newIndex;

    public BlockContinueImpl(int i, int i2, boolean z) {
        this.newIndex = i;
        this.newColumn = i2;
        this.finalize = z;
    }

    public static BlockContinueImpl atIndex(int i) {
        return new BlockContinueImpl(i, -1, false);
    }
}
