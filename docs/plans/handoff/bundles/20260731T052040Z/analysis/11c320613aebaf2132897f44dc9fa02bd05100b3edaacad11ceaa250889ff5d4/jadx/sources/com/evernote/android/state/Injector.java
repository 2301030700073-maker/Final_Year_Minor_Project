package com.evernote.android.state;

import android.os.Bundle;
import android.os.Parcelable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Injector {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static abstract class Object<T> extends Injector {
        static final Object<?> DEFAULT = new Object<java.lang.Object>() { // from class: com.evernote.android.state.Injector.Object.1
            @Override // com.evernote.android.state.Injector.Object
            public void restore(java.lang.Object obj, Bundle bundle) {
            }

            @Override // com.evernote.android.state.Injector.Object
            public void save(java.lang.Object obj, Bundle bundle) {
            }
        };

        public abstract void restore(T t, Bundle bundle);

        public abstract void save(T t, Bundle bundle);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static abstract class View<T> extends Injector {
        static final View<?> DEFAULT = new View<java.lang.Object>() { // from class: com.evernote.android.state.Injector.View.1
            @Override // com.evernote.android.state.Injector.View
            public Parcelable restore(java.lang.Object obj, Parcelable parcelable) {
                return parcelable;
            }

            @Override // com.evernote.android.state.Injector.View
            public Parcelable save(java.lang.Object obj, Parcelable parcelable) {
                return parcelable;
            }
        };

        public abstract Parcelable restore(T t, Parcelable parcelable);

        public abstract Parcelable save(T t, Parcelable parcelable);
    }
}
