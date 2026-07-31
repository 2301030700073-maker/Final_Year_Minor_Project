package org.minidns.record;

import j$.util.DesugarCollections;
import java.io.DataOutputStream;
import java.util.List;
import org.minidns.edns.EdnsOption;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OPT extends Data {
    public final List variablePart;

    public OPT(List list) {
        this.variablePart = DesugarCollections.unmodifiableList(list);
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        for (EdnsOption ednsOption : this.variablePart) {
            dataOutputStream.writeShort(ednsOption.optionCode);
            dataOutputStream.writeShort(ednsOption.optionLength);
            dataOutputStream.write(ednsOption.optionData);
        }
    }
}
