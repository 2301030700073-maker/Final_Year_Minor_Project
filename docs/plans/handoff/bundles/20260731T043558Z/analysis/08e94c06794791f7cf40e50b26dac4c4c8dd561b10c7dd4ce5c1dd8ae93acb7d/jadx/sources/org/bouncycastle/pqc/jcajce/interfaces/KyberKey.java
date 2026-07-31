package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.Key;
import org.bouncycastle.pqc.jcajce.spec.KyberParameterSpec;

/* loaded from: classes6.dex */
public interface KyberKey extends Key {
    KyberParameterSpec getParameterSpec();
}
