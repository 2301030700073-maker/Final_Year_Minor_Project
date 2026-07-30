package kotlin.reflect;

import java.util.List;

/* compiled from: KTypeParameter.kt */
/* loaded from: classes2.dex */
public interface KTypeParameter extends KClassifier {
    String getName();

    List getUpperBounds();

    KVariance getVariance();
}
