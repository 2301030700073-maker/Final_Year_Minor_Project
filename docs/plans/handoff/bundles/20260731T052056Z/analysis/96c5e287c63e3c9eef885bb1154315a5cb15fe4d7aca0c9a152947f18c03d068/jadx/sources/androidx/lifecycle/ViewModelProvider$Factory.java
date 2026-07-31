package androidx.lifecycle;

import androidx.lifecycle.viewmodel.MutableCreationExtras;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ViewModelProvider$Factory {
    ViewModel create(Class cls);

    ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras);

    ViewModel create(KClass kClass, MutableCreationExtras mutableCreationExtras);
}
