package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyMap;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Jsr305Settings {
    public final ReportLevel globalLevel;
    public final boolean isDisabled;
    public final ReportLevel migrationLevel;
    public final Map userDefinedLevelForSpecificAnnotation = EmptyMap.INSTANCE;

    public Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2) {
        this.globalLevel = reportLevel;
        this.migrationLevel = reportLevel2;
        new SynchronizedLazyImpl(new AndroidLeakFixes$Companion$onDecorViewReady$1(3, this));
        ReportLevel reportLevel3 = ReportLevel.IGNORE;
        this.isDisabled = reportLevel == reportLevel3 && reportLevel2 == reportLevel3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Jsr305Settings)) {
            return false;
        }
        Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
        return this.globalLevel == jsr305Settings.globalLevel && this.migrationLevel == jsr305Settings.migrationLevel && this.userDefinedLevelForSpecificAnnotation.equals(jsr305Settings.userDefinedLevelForSpecificAnnotation);
    }

    public final int hashCode() {
        int hashCode = this.globalLevel.hashCode() * 31;
        ReportLevel reportLevel = this.migrationLevel;
        return this.userDefinedLevelForSpecificAnnotation.hashCode() + ((hashCode + (reportLevel == null ? 0 : reportLevel.hashCode())) * 31);
    }

    public final String toString() {
        return "Jsr305Settings(globalLevel=" + this.globalLevel + ", migrationLevel=" + this.migrationLevel + ", userDefinedLevelForSpecificAnnotation=" + this.userDefinedLevelForSpecificAnnotation + ')';
    }
}
