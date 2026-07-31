package org.schabi.newpipe.views.player;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public enum PlayerFastSeekOverlay$PerformListener$FastSeekDirection {
    NONE(null),
    FORWARD(Boolean.TRUE),
    BACKWARD(Boolean.FALSE);

    private final Boolean directionAsBoolean;

    PlayerFastSeekOverlay$PerformListener$FastSeekDirection(Boolean bool) {
        this.directionAsBoolean = bool;
    }

    public final Boolean getDirectionAsBoolean() {
        return this.directionAsBoolean;
    }
}
