package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.Key;
import org.bouncycastle.pqc.jcajce.spec.NTRUParameterSpec;

/* loaded from: classes6.dex */
public interface NTRUKey extends Key {
    NTRUParameterSpec getParameterSpec();
}
