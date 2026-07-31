package expo.modules.structuredheaders;

/* loaded from: classes5.dex */
public interface NumberItem<T> extends Item<T>, LongSupplier {
    int getDivisor();

    @Override // expo.modules.structuredheaders.Item, expo.modules.structuredheaders.Parametrizable
    NumberItem<T> withParams(Parameters parameters);
}
