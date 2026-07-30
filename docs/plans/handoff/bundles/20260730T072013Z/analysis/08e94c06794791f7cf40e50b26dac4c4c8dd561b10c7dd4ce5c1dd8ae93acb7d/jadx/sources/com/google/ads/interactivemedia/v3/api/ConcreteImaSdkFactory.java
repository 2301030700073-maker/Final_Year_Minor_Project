package com.google.ads.interactivemedia.v3.api;

/* compiled from: ImaSdkFactory.java */
/* loaded from: classes3.dex */
class ConcreteImaSdkFactory extends ImaSdkFactory {
    ConcreteImaSdkFactory() {
    }

    @Override // com.google.ads.interactivemedia.v3.api.ImaSdkFactory
    public ImaSdkSettings createImaSdkSettings() {
        return new ConcreteImaSdkSettings();
    }
}
