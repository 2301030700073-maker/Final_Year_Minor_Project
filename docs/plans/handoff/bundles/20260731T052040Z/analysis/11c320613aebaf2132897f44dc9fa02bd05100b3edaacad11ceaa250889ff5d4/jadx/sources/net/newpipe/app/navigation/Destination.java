package net.newpipe.app.navigation;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import net.newpipe.app.screen.about.LicensePageKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Destination {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class About implements Destination {
        public static final About INSTANCE = new About();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LicensePageKt$$ExternalSyntheticLambda1(1));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof About);
        }

        public final int hashCode() {
            return -1850869615;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "About";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public final KSerializer serializer() {
            return new SealedClassSerializer(Reflection.getOrCreateKotlinClass(Destination.class), new ClassReference[]{Reflection.getOrCreateKotlinClass(About.class), Reflection.getOrCreateKotlinClass(Settings.class)}, new KSerializer[]{new ObjectSerializer("net.newpipe.app.navigation.Destination.About", About.INSTANCE, new Annotation[0]), new ObjectSerializer("net.newpipe.app.navigation.Destination.Settings", Settings.INSTANCE, new Annotation[0])}, new Annotation[0]);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Settings implements Destination {
        public static final Settings INSTANCE = new Settings();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LicensePageKt$$ExternalSyntheticLambda1(2));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Settings);
        }

        public final int hashCode() {
            return -651192161;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "Settings";
        }
    }
}
