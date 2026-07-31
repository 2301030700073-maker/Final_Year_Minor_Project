package expo.modules.structuredheaders;

/* loaded from: classes5.dex */
public interface Parametrizable<T> extends Type<T> {
    Parameters getParams();

    Parametrizable<T> withParams(Parameters parameters);
}
