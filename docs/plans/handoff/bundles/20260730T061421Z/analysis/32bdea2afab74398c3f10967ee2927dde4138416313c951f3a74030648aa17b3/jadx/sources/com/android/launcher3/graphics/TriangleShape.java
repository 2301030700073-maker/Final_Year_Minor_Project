package com.android.launcher3.graphics;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.shapes.PathShape;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class TriangleShape extends PathShape {
    public Path mTriangularPath;

    public TriangleShape(Path path, float f, float f2) {
        super(path, f, f2);
        this.mTriangularPath = path;
    }

    public static TriangleShape create(float f, float f2, boolean z) {
        Path path = new Path();
        if (z) {
            path.moveTo(RecentsState.NO_OFFSET, f2);
            path.lineTo(f, f2);
            path.lineTo(f / 2.0f, RecentsState.NO_OFFSET);
            path.close();
        } else {
            path.moveTo(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
            path.lineTo(f / 2.0f, f2);
            path.lineTo(f, RecentsState.NO_OFFSET);
            path.close();
        }
        return new TriangleShape(path, f, f2);
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void getOutline(Outline outline) {
        outline.setConvexPath(this.mTriangularPath);
    }
}
