/* Generated by wayland-scanner 1.22.0 */

#ifndef HYPRLAND_TOPLEVEL_EXPORT_V1_SERVER_PROTOCOL_H
#define HYPRLAND_TOPLEVEL_EXPORT_V1_SERVER_PROTOCOL_H

#include <stdint.h>
#include <stddef.h>
#include "wayland-server.h"

#ifdef  __cplusplus
extern "C" {
#endif

struct wl_client;
struct wl_resource;

/**
 * @page page_hyprland_toplevel_export_v1 The hyprland_toplevel_export_v1 protocol
 * capturing the contents of toplevel windows
 *
 * @section page_desc_hyprland_toplevel_export_v1 Description
 *
 * This protocol allows clients to ask for exporting another toplevel's
 * surface(s) to a buffer.
 *
 * Particularly useful for sharing a single window.
 *
 * @section page_ifaces_hyprland_toplevel_export_v1 Interfaces
 * - @subpage page_iface_hyprland_toplevel_export_manager_v1 - manager to inform clients and begin capturing
 * - @subpage page_iface_hyprland_toplevel_export_frame_v1 - a frame ready for copy
 * @section page_copyright_hyprland_toplevel_export_v1 Copyright
 * <pre>
 *
 * Copyright © 2022 Vaxry
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * </pre>
 */
struct hyprland_toplevel_export_frame_v1;
struct hyprland_toplevel_export_manager_v1;
struct wl_buffer;
struct zwlr_foreign_toplevel_handle_v1;

#ifndef HYPRLAND_TOPLEVEL_EXPORT_MANAGER_V1_INTERFACE
#define HYPRLAND_TOPLEVEL_EXPORT_MANAGER_V1_INTERFACE
/**
 * @page page_iface_hyprland_toplevel_export_manager_v1 hyprland_toplevel_export_manager_v1
 * @section page_iface_hyprland_toplevel_export_manager_v1_desc Description
 *
 * This object is a manager which offers requests to start capturing from a
 * source.
 * @section page_iface_hyprland_toplevel_export_manager_v1_api API
 * See @ref iface_hyprland_toplevel_export_manager_v1.
 */
/**
 * @defgroup iface_hyprland_toplevel_export_manager_v1 The hyprland_toplevel_export_manager_v1 interface
 *
 * This object is a manager which offers requests to start capturing from a
 * source.
 */
extern const struct wl_interface hyprland_toplevel_export_manager_v1_interface;
#endif
#ifndef HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_INTERFACE
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_INTERFACE
/**
 * @page page_iface_hyprland_toplevel_export_frame_v1 hyprland_toplevel_export_frame_v1
 * @section page_iface_hyprland_toplevel_export_frame_v1_desc Description
 *
 * This object represents a single frame.
 *
 * When created, a series of buffer events will be sent, each representing a
 * supported buffer type. The "buffer_done" event is sent afterwards to
 * indicate that all supported buffer types have been enumerated. The client
 * will then be able to send a "copy" request. If the capture is successful,
 * the compositor will send a "flags" followed by a "ready" event.
 *
 * wl_shm buffers are always supported, ie. the "buffer" event is guaranteed to be sent.
 *
 * If the capture failed, the "failed" event is sent. This can happen anytime
 * before the "ready" event.
 *
 * Once either a "ready" or a "failed" event is received, the client should
 * destroy the frame.
 * @section page_iface_hyprland_toplevel_export_frame_v1_api API
 * See @ref iface_hyprland_toplevel_export_frame_v1.
 */
/**
 * @defgroup iface_hyprland_toplevel_export_frame_v1 The hyprland_toplevel_export_frame_v1 interface
 *
 * This object represents a single frame.
 *
 * When created, a series of buffer events will be sent, each representing a
 * supported buffer type. The "buffer_done" event is sent afterwards to
 * indicate that all supported buffer types have been enumerated. The client
 * will then be able to send a "copy" request. If the capture is successful,
 * the compositor will send a "flags" followed by a "ready" event.
 *
 * wl_shm buffers are always supported, ie. the "buffer" event is guaranteed to be sent.
 *
 * If the capture failed, the "failed" event is sent. This can happen anytime
 * before the "ready" event.
 *
 * Once either a "ready" or a "failed" event is received, the client should
 * destroy the frame.
 */
extern const struct wl_interface hyprland_toplevel_export_frame_v1_interface;
#endif

/**
 * @ingroup iface_hyprland_toplevel_export_manager_v1
 * @struct hyprland_toplevel_export_manager_v1_interface
 */
struct hyprland_toplevel_export_manager_v1_interface {
	/**
	 * capture a toplevel
	 *
	 * Capture the next frame of a toplevel. (window)
	 *
	 * The captured frame will not contain any server-side decorations
	 * and will ignore the compositor-set geometry, like e.g. rounded
	 * corners.
	 *
	 * It will contain all the subsurfaces and popups, however the
	 * latter will be clipped to the geometry of the base surface.
	 *
	 * The handle parameter refers to the address of the window as seen
	 * in `hyprctl clients`. For example, for d161e7b0 it would be
	 * 3512854448.
	 * @param overlay_cursor composite cursor onto the frame
	 * @param handle the handle of the toplevel (window) to be captured
	 */
	void (*capture_toplevel)(struct wl_client *client,
				 struct wl_resource *resource,
				 uint32_t frame,
				 int32_t overlay_cursor,
				 uint32_t handle);
	/**
	 * destroy the manager
	 *
	 * All objects created by the manager will still remain valid,
	 * until their appropriate destroy request has been called.
	 */
	void (*destroy)(struct wl_client *client,
			struct wl_resource *resource);
	/**
	 * capture a toplevel
	 *
	 * Same as capture_toplevel, but with a
	 * zwlr_foreign_toplevel_handle_v1 handle.
	 * @param overlay_cursor composite cursor onto the frame
	 * @param handle the zwlr_foreign_toplevel_handle_v1 handle of the toplevel to be captured
	 * @since 2
	 */
	void (*capture_toplevel_with_wlr_toplevel_handle)(struct wl_client *client,
							  struct wl_resource *resource,
							  uint32_t frame,
							  int32_t overlay_cursor,
							  struct wl_resource *handle);
};


/**
 * @ingroup iface_hyprland_toplevel_export_manager_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_MANAGER_V1_CAPTURE_TOPLEVEL_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_manager_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_MANAGER_V1_DESTROY_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_manager_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_MANAGER_V1_CAPTURE_TOPLEVEL_WITH_WLR_TOPLEVEL_HANDLE_SINCE_VERSION 2

#ifndef HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_ERROR_ENUM
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_ERROR_ENUM
enum hyprland_toplevel_export_frame_v1_error {
	/**
	 * the object has already been used to copy a wl_buffer
	 */
	HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_ERROR_ALREADY_USED = 0,
	/**
	 * buffer attributes are invalid
	 */
	HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_ERROR_INVALID_BUFFER = 1,
};
#endif /* HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_ERROR_ENUM */

#ifndef HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS_ENUM
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS_ENUM
enum hyprland_toplevel_export_frame_v1_flags {
	/**
	 * contents are y-inverted
	 */
	HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS_Y_INVERT = 1,
};
#endif /* HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS_ENUM */

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * @struct hyprland_toplevel_export_frame_v1_interface
 */
struct hyprland_toplevel_export_frame_v1_interface {
	/**
	 * copy the frame
	 *
	 * Copy the frame to the supplied buffer. The buffer must have
	 * the correct size, see hyprland_toplevel_export_frame_v1.buffer
	 * and hyprland_toplevel_export_frame_v1.linux_dmabuf. The buffer
	 * needs to have a supported format.
	 *
	 * If the frame is successfully copied, a "flags" and a "ready"
	 * event is sent. Otherwise, a "failed" event is sent.
	 *
	 * This event will wait for appropriate damage to be copied, unless
	 * the ignore_damage arg is set to a non-zero value.
	 */
	void (*copy)(struct wl_client *client,
		     struct wl_resource *resource,
		     struct wl_resource *buffer,
		     int32_t ignore_damage);
	/**
	 * delete this object, used or not
	 *
	 * Destroys the frame. This request can be sent at any time by
	 * the client.
	 */
	void (*destroy)(struct wl_client *client,
			struct wl_resource *resource);
};

#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER 0
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_DAMAGE 1
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS 2
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_READY 3
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FAILED 4
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_LINUX_DMABUF 5
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER_DONE 6

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_DAMAGE_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_READY_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FAILED_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_LINUX_DMABUF_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER_DONE_SINCE_VERSION 1

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_COPY_SINCE_VERSION 1
/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 */
#define HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_DESTROY_SINCE_VERSION 1

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an buffer event to the client owning the resource.
 * @param resource_ The client's resource
 * @param format buffer format
 * @param width buffer width
 * @param height buffer height
 * @param stride buffer stride
 */
static inline void
hyprland_toplevel_export_frame_v1_send_buffer(struct wl_resource *resource_, uint32_t format, uint32_t width, uint32_t height, uint32_t stride)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER, format, width, height, stride);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an damage event to the client owning the resource.
 * @param resource_ The client's resource
 * @param x damaged x coordinates
 * @param y damaged y coordinates
 * @param width current width
 * @param height current height
 */
static inline void
hyprland_toplevel_export_frame_v1_send_damage(struct wl_resource *resource_, uint32_t x, uint32_t y, uint32_t width, uint32_t height)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_DAMAGE, x, y, width, height);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an flags event to the client owning the resource.
 * @param resource_ The client's resource
 * @param flags frame flags
 */
static inline void
hyprland_toplevel_export_frame_v1_send_flags(struct wl_resource *resource_, uint32_t flags)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FLAGS, flags);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an ready event to the client owning the resource.
 * @param resource_ The client's resource
 * @param tv_sec_hi high 32 bits of the seconds part of the timestamp
 * @param tv_sec_lo low 32 bits of the seconds part of the timestamp
 * @param tv_nsec nanoseconds part of the timestamp
 */
static inline void
hyprland_toplevel_export_frame_v1_send_ready(struct wl_resource *resource_, uint32_t tv_sec_hi, uint32_t tv_sec_lo, uint32_t tv_nsec)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_READY, tv_sec_hi, tv_sec_lo, tv_nsec);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an failed event to the client owning the resource.
 * @param resource_ The client's resource
 */
static inline void
hyprland_toplevel_export_frame_v1_send_failed(struct wl_resource *resource_)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_FAILED);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an linux_dmabuf event to the client owning the resource.
 * @param resource_ The client's resource
 * @param format fourcc pixel format
 * @param width buffer width
 * @param height buffer height
 */
static inline void
hyprland_toplevel_export_frame_v1_send_linux_dmabuf(struct wl_resource *resource_, uint32_t format, uint32_t width, uint32_t height)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_LINUX_DMABUF, format, width, height);
}

/**
 * @ingroup iface_hyprland_toplevel_export_frame_v1
 * Sends an buffer_done event to the client owning the resource.
 * @param resource_ The client's resource
 */
static inline void
hyprland_toplevel_export_frame_v1_send_buffer_done(struct wl_resource *resource_)
{
	wl_resource_post_event(resource_, HYPRLAND_TOPLEVEL_EXPORT_FRAME_V1_BUFFER_DONE);
}

#ifdef  __cplusplus
}
#endif

#endif