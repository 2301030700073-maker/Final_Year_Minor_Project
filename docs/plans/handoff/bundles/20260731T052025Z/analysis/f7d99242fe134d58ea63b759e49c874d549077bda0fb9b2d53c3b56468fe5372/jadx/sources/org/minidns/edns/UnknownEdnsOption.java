package org.minidns.edns;

import org.minidns.edns.Edns;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnknownEdnsOption extends EdnsOption {
    @Override // org.minidns.edns.EdnsOption
    public final StringBuilder asTerminalOutputInternal() {
        return Hex.from(this.optionData);
    }

    @Override // org.minidns.edns.EdnsOption
    public final Edns.OptionCode getOptionCode() {
        return Edns.OptionCode.UNKNOWN;
    }

    @Override // org.minidns.edns.EdnsOption
    public final CharSequence toStringInternal() {
        return Hex.from(this.optionData);
    }
}
