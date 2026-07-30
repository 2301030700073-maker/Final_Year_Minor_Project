package com.android.systemui.shared.plugins;

import android.util.ArrayMap;
import c.a.c.a.a;
import com.android.systemui.plugins.annotations.Dependencies;
import com.android.systemui.plugins.annotations.DependsOn;
import com.android.systemui.plugins.annotations.ProvidesInterface;
import com.android.systemui.plugins.annotations.Requirements;
import com.android.systemui.plugins.annotations.Requires;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class VersionInfo {
    public Class mDefault;
    public final ArrayMap mVersions = new ArrayMap();

    public class Version {
        public final boolean mRequired;
        public final int mVersion;

        public Version(int i, boolean z) {
            this.mVersion = i;
            this.mRequired = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Version createVersion(Class cls) {
        ProvidesInterface providesInterface = (ProvidesInterface) cls.getDeclaredAnnotation(ProvidesInterface.class);
        if (providesInterface != null) {
            return new Version(providesInterface.version(), false);
        }
        return null;
    }

    public VersionInfo addClass(Class cls) {
        if (this.mDefault == null) {
            this.mDefault = cls;
        }
        addClass(cls, false);
        return this;
    }

    public void checkVersion(VersionInfo versionInfo) {
        final ArrayMap arrayMap = new ArrayMap(this.mVersions);
        versionInfo.mVersions.forEach(new BiConsumer() { // from class: com.android.systemui.shared.plugins.VersionInfo.1
            @Override // java.util.function.BiConsumer
            public void accept(Class cls, Version version) {
                Version version2 = (Version) arrayMap.remove(cls);
                if (version2 == null) {
                    version2 = VersionInfo.this.createVersion(cls);
                }
                if (version2 != null) {
                    if (version2.mVersion != version.mVersion) {
                        throw new InvalidVersionException(cls, version2.mVersion < version.mVersion, version2.mVersion, version.mVersion);
                    }
                } else {
                    throw new InvalidVersionException(cls.getSimpleName() + " does not provide an interface", false);
                }
            }
        });
        arrayMap.forEach(new BiConsumer() { // from class: com.android.systemui.shared.plugins.VersionInfo.2
            @Override // java.util.function.BiConsumer
            public void accept(Class cls, Version version) {
                if (version.mRequired) {
                    StringBuilder f = a.f("Missing required dependency ");
                    f.append(cls.getSimpleName());
                    throw new InvalidVersionException(f.toString(), false);
                }
            }
        });
    }

    public int getDefaultVersion() {
        return ((Version) this.mVersions.get(this.mDefault)).mVersion;
    }

    public boolean hasClass(Class cls) {
        return this.mVersions.containsKey(cls);
    }

    public boolean hasVersionInfo() {
        return !this.mVersions.isEmpty();
    }

    public class InvalidVersionException extends RuntimeException {
        public final boolean mTooNew;

        public InvalidVersionException(String str, boolean z) {
            super(str);
            this.mTooNew = z;
        }

        public boolean isTooNew() {
            return this.mTooNew;
        }

        public InvalidVersionException(Class cls, boolean z, int i, int i2) {
            super(cls.getSimpleName() + " expected version " + i + " but had " + i2);
            this.mTooNew = z;
        }
    }

    private void addClass(Class cls, boolean z) {
        if (this.mVersions.containsKey(cls)) {
            return;
        }
        ProvidesInterface providesInterface = (ProvidesInterface) cls.getDeclaredAnnotation(ProvidesInterface.class);
        if (providesInterface != null) {
            this.mVersions.put(cls, new Version(providesInterface.version(), true));
        }
        Requires requires = (Requires) cls.getDeclaredAnnotation(Requires.class);
        if (requires != null) {
            this.mVersions.put(requires.target(), new Version(requires.version(), z));
        }
        Requirements requirements = (Requirements) cls.getDeclaredAnnotation(Requirements.class);
        if (requirements != null) {
            for (Requires requires2 : requirements.value()) {
                this.mVersions.put(requires2.target(), new Version(requires2.version(), z));
            }
        }
        DependsOn dependsOn = (DependsOn) cls.getDeclaredAnnotation(DependsOn.class);
        if (dependsOn != null) {
            addClass(dependsOn.target(), true);
        }
        Dependencies dependencies = (Dependencies) cls.getDeclaredAnnotation(Dependencies.class);
        if (dependencies != null) {
            for (DependsOn dependsOn2 : dependencies.value()) {
                addClass(dependsOn2.target(), true);
            }
        }
    }
}
