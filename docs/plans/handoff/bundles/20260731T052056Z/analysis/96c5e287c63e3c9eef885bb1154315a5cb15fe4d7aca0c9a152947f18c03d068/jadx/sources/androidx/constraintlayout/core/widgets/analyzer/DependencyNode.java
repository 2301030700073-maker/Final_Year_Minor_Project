package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class DependencyNode implements Dependency {
    public int mMargin;
    public final WidgetRun mRun;
    public int value;
    public WidgetRun updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;
    public Type mType = Type.UNKNOWN;
    public int mMarginFactor = 1;
    public DimensionDependency mMarginDependency = null;
    public boolean resolved = false;
    public final ArrayList mDependencies = new ArrayList();
    public final ArrayList mTargets = new ArrayList();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BASELINE;
        public static final Type BOTTOM;
        public static final Type HORIZONTAL_DIMENSION;
        public static final Type LEFT;
        public static final Type RIGHT;
        public static final Type TOP;
        public static final Type UNKNOWN;
        public static final Type VERTICAL_DIMENSION;

        static {
            Type type = new Type("UNKNOWN", 0);
            UNKNOWN = type;
            Type type2 = new Type("HORIZONTAL_DIMENSION", 1);
            HORIZONTAL_DIMENSION = type2;
            Type type3 = new Type("VERTICAL_DIMENSION", 2);
            VERTICAL_DIMENSION = type3;
            Type type4 = new Type("LEFT", 3);
            LEFT = type4;
            Type type5 = new Type("RIGHT", 4);
            RIGHT = type5;
            Type type6 = new Type("TOP", 5);
            TOP = type6;
            Type type7 = new Type("BOTTOM", 6);
            BOTTOM = type7;
            Type type8 = new Type("BASELINE", 7);
            BASELINE = type8;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.mRun = widgetRun;
    }

    public final void addDependency(WidgetRun widgetRun) {
        this.mDependencies.add(widgetRun);
        if (this.resolved) {
            widgetRun.update(widgetRun);
        }
    }

    public final void clear() {
        this.mTargets.clear();
        this.mDependencies.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public void resolve(int i) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i;
        Iterator it = this.mDependencies.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            dependency.update(dependency);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mRun.mWidget.mDebugName);
        sb.append(":");
        sb.append(this.mType);
        sb.append("(");
        sb.append(this.resolved ? Integer.valueOf(this.value) : "unresolved");
        sb.append(") <t=");
        sb.append(this.mTargets.size());
        sb.append(":d=");
        sb.append(this.mDependencies.size());
        sb.append(">");
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void update(Dependency dependency) {
        ArrayList arrayList = this.mTargets;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        WidgetRun widgetRun = this.updateDelegate;
        if (widgetRun != null) {
            widgetRun.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.mRun.update(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        DependencyNode dependencyNode = null;
        int i = 0;
        while (it2.hasNext()) {
            DependencyNode dependencyNode2 = (DependencyNode) it2.next();
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.resolved) {
            DimensionDependency dimensionDependency = this.mMarginDependency;
            if (dimensionDependency != null) {
                if (!dimensionDependency.resolved) {
                    return;
                } else {
                    this.mMargin = this.mMarginFactor * dimensionDependency.value;
                }
            }
            resolve(dependencyNode.value + this.mMargin);
        }
        WidgetRun widgetRun2 = this.updateDelegate;
        if (widgetRun2 != null) {
            widgetRun2.update(this);
        }
    }
}
