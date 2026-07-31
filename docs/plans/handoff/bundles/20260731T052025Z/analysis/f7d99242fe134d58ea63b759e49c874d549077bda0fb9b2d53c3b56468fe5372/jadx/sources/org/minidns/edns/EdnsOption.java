package org.minidns.edns;

import org.minidns.edns.Edns;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EdnsOption {
    public final int optionCode;
    public final byte[] optionData;
    public final int optionLength;
    public String terminalOutputCache;
    public String toStringCache;

    public EdnsOption(byte[] bArr) {
        Edns.OptionCode optionCode = Edns.OptionCode.UNKNOWN;
        this.optionCode = 3;
        this.optionLength = bArr.length;
        this.optionData = bArr;
    }

    public abstract StringBuilder asTerminalOutputInternal();

    public abstract Edns.OptionCode getOptionCode();

    public final String toString() {
        if (this.toStringCache == null) {
            this.toStringCache = toStringInternal().toString();
        }
        return this.toStringCache;
    }

    public abstract CharSequence toStringInternal();

    public EdnsOption(int i, byte[] bArr) {
        this.optionCode = i;
        this.optionLength = bArr.length;
        this.optionData = bArr;
    }
}
