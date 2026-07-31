package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.name.Name;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface DeclarationDescriptor extends Annotated {
    Object accept(ConnectionPool connectionPool, Object obj);

    DeclarationDescriptor getContainingDeclaration();

    Name getName();

    DeclarationDescriptor getOriginal();
}
